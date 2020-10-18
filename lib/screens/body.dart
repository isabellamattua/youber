import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';
import 'package:youber/screens/OrderBox.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_svg/svg.dart';


import 'header_bar.dart';

class Body extends StatelessWidget {

 


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              header_bar(size: size),
              TextWithUnderlineDeco( text: "Orders"),
              OrderBox(text: "Order:1546215\nClient name: Gerge Annoyinlus"),
              OrderBox(text: "Order:2151\nClient name: Blobby Blenderson"),
              OrderBox(text: "Order:1215\nClient name: Baron Von Gregorio"),
              OrderBox(text: "Order:78115\nClient name: Demoness"),
              OrderBox(text: "Order:1478\nClient name: Ranibow Sprimkle"),
              Scaffold(
                bottomNavigationBar: BottomNavigationBar (
                  currentIndex: 0,
                    items:[
                    BottomNavigationBarItem(
                      icon: Image.asset("assets/icons/basket.png"{

                      }),
                      title: new Text("0"),
                    ),
                      BottomNavigationBarItem(
                          icon: Image.asset("assets/icons/payment.png"),
                          title: new Text("0"),

                      ),
                      BottomNavigationBarItem(
                          icon: Image.asset("assets/icons/setting.png"),
                        title: new Text("0"),
                      )

                  ],
                ),
              )
            ]
        )


        );


    }
  }



