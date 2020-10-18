import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';
import 'package:youber/screens/OrderBox.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_svg/svg.dart';
import 'package:youber/screens/routes.dart';

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
              OrderBox(orderNumber: "1546215" , name: "PATRICK STAR"),
              OrderBox(orderNumber: "2151" , name: "OLD MAN JENKINS"),
              OrderBox(orderNumber: "78115" , name: "JOHNNY ELAINE"),
              OrderBox(orderNumber: "78115" , name: "THE FLYING DUTCHMAN"),
              OrderBox(orderNumber: "35" , name: "SQUIDWARD TENTACLES"),
              OrderBox(orderNumber: "35" , name: "GARY"),


            ]
        )


        );


    }
  }



