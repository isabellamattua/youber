import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            Text(
              'Choose your tip Amount:',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),),
            const SizedBox(height: 10.0),
            Row(
                children: <Widget>[
                  Expanded(
                    child: RoundedContainer(
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0,),
                        child: Column(
                          children: <Widget>[
                            Text("0.00",),
                            const SizedBox(height: 5.0),
                            Text("Dont Be Cheap", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ))
                          ],
                        )
                    ),
                  ),                Expanded(
                    child: RoundedContainer(
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0,),
                        child: Column(
                          children: <Widget>[
                            Text("3.00",),
                            const SizedBox(height: 5.0),
                            Text("Thats a little better!", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ))
                          ],
                        )
                    ),
                  ),
                ]
            ),




            Row(
                children: <Widget>[
                  Expanded(
                    child: RoundedContainer(
                        color: Colors.indigo,
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0,),
                        child: Column(
                          children: <Widget>[
                            Text("5.00",),
                            const SizedBox(height: 5.0),
                            Text("Okay thats pretty good!", style: TextStyle(
                              color: Colors.white60,
                              fontSize: 12.0,
                            ))
                          ],
                        )
                    ),
                  ),                Expanded(
                    child: RoundedContainer(
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0,),
                        child: Column(
                          children: <Widget>[
                            Text("10.00",),
                            const SizedBox(height: 5.0),
                            Text("Your Amazing!!", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ))
                          ],
                        )
                    ),
                  ),
                ]
            ),
            RoundedContainer(
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0,),
                child: Column(
                  children: <Widget>[
                    Text("Total for Order:",),
                    const SizedBox(height: 5.0),
                    Text("\$25.00", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ))
                  ],
                )
            ),
            const SizedBox(height: 30.0,),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Paypal"),
                trailing: Icon(Icons.arrow_forward_ios),

              )
              ,),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Google Pay"),
                trailing: Icon(Icons.arrow_forward_ios),

              )
              ,),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Apple Pay"),
                trailing: Icon(Icons.arrow_forward_ios),

              )
              ,),
            const SizedBox(height: 20.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                  child: Text("Clear"),
                  onPressed: () {},
                ),
                const SizedBox(height: 12),
              ],
            ),
            Container(

                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 32.0,),
                child: RaisedButton(
                  elevation: 0,
                  padding: const EdgeInsets.all(24.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text("Continue"),
                  color: Colors.indigo,
                  textColor: Colors.white,
                  onPressed: (){},


                )




            ),


          ],
        ),
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    Key key,
    @required this.child,
    this.height,
    this.width,
    this.color = Colors.white,
    this.padding = const EdgeInsets.all(16.0),
    this.margin,
    this.borderRadius,
    this.alignment,
    this.elevation,
  }) : super(key: key);
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final BorderRadius borderRadius;
  final AlignmentGeometry alignment;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin ?? const EdgeInsets.all(0),
      color: color,
      elevation: elevation ?? 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(20.0),
      ),
      child: Container(
        alignment: alignment,
        height: height,
        width: width,
        padding: padding,
        child: child,
      ),
    );
  }
}