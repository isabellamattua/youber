import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/cHomePage.dart';
import 'package:youber/screens/home_screen.dart';
import 'package:youber/screens/loginScreen.dart';
import 'package:nice_button/nice_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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





