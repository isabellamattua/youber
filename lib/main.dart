import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'contact.dart';
import 'contact_services.dart';

import 'package:youber/constants.dart';
import 'package:youber/screens/cHomePage.dart';
import 'package:youber/screens/home_screen.dart';
import 'package:youber/screens/loginScreen.dart';
import 'package:nice_button/nice_button.dart';


import 'dart:async';
import 'package:intl/intl.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Flutter Form Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Form Demo'),

    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Youber',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: cHomePage(),

    );
  }
}



  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  Contact newContact = new Contact();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
  String _color = '';

  final TextEditingController _controller = new TextEditingController();
  _chooseDate(BuildContext context, String initialDateString) async {
    var now = new DateTime.now();
    var initialDate = convertToDate(initialDateString) ?? now;
    initialDate = (initialDate.year >= 1900 && initialDate.isBefore(now) ? initialDate : now);

    var result = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: new DateTime(1900),
        lastDate: new DateTime.now());

    if (result == null) return;

    setState(() {
      _controller.text = new DateFormat.yMd().format(result);
    });
  }


  bool isValidDob(String dob) {
    if (dob.isEmpty) return true;
    var d = convertToDate(dob);
    return d != null && d.isBefore(new DateTime.now());
  }


  bool isValidPhoneNumber(String input) {
    final RegExp regex = new RegExp(r'^\(\d\d\d\)\d\d\d\-\d\d\d\d$');
    return regex.hasMatch(input);
  }




  bool isValidEmail(String input) {
    final RegExp regex = new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regex.hasMatch(input);
  }


  DateTime convertToDate(String input) {
    try
    {
      var d = new DateFormat.yMd().parseStrict(input);
      return d;
    } catch (e) {
      return null;
    }
  }

  void _submitForm() {
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      showMessage('Form is not valid!  Please review and correct.');
    } else {
      form.save(); //This invokes each onSaved event

      print('Form save called, newContact is now up to date...');
      print('firstName: ${newContact.firstName}');
      print('Dob: ${newContact.birthDate}');
      print('Phone: ${newContact.phone}');
      print('Email: ${newContact.profileUsername}');
      print('========================================');
      print('Submitting to back end...');
      var contactService = new ContactService();
      contactService.createContact(newContact);

    }
  }

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(backgroundColor: color, content: new Text(message)));
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your first and last name',
                      labelText: 'Name',
                    ),
                    inputFormatters: [new LengthLimitingTextInputFormatter(30)],
                    validator: (val) => val.isEmpty ? 'Name is required' : null,
                    onSaved: (val) => newContact.firstName = val,
                  ),
                  new Row(children: <Widget>[
                    new Expanded(
                        child: new TextFormField(
                          decoration: new InputDecoration(
                            icon: const Icon(Icons.calendar_today),
                            hintText: 'Enter your date of birth',
                            labelText: 'Dob',
                          ),
                          controller: _controller,
                          keyboardType: TextInputType.datetime,
                          validator: (val) =>
                          isValidDob(val) ? null : 'Not a valid date',
                          onSaved: (val) => newContact.birthDate = convertToDate(val),
                        )),
                    new IconButton(
                      icon: new Icon(Icons.more_horiz),
                      tooltip: 'Choose date',
                      onPressed: (() {
                        _chooseDate(context, _controller.text);
                      }),
                    )
                  ]),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      new WhitelistingTextInputFormatter(
                          new RegExp(r'^[()\d -]{1,15}$')),
                    ],

                    onSaved: (val) => newContact.phone = val,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter a email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => isValidEmail(value)
                        ? null
                        : 'Please enter a valid email address',
                    onSaved: (val) => newContact.profileUsername = val,
                  ),

                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Submit'),
                        onPressed: _submitForm,
                      )),
                ],
              ))),
    );
  }
}


