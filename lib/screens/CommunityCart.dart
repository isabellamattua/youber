import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';
import 'package:youber/screens/OrderBox.dart';
import 'package:nice_button/nice_button.dart';
import 'package:flutter_svg/svg.dart';


import 'header_bar.dart';

class CommunityCart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return new Scaffold(
        body: Column(
            children: <Widget>[
              TextWithUnderlineDeco(text: "Community Cart"),
              OrderBox(orderNumber: "Sailors Surprise", name: "Community Cart"),
              OrderBox(orderNumber: "Kelp Rings", name: "Community Cart"),
              OrderBox(
                  orderNumber: "Double Krabby Meal", name: "Community Cart"),
              Positioned(
                  top: size.height * 0.2,
                left: 0,
                right: 0,
                 child: NiceButton(
                    width: 255,
                    elevation: 8.0,
                    radius: 52.0,
                    text: "Request Pickup",
                    background: kLighterTonePrimaryColor.withOpacity(0.9),
                  )
              )

            ]
        )
    );
  }
}