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
              OrderBox(orderNumber: "1546215" , name: "Gerge Annoyinlus"),
              OrderBox(orderNumber: "2151" , name: "Blobby Blenderson"),
              OrderBox(orderNumber: "78115" , name: "Demoness"),
              OrderBox(orderNumber: "78115" , name: "Baron Von Gregorio"),
              OrderBox(orderNumber: "35" , name: "Ranibow Sprimkle"),


            ]
        )


        );


    }
  }



