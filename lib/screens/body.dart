

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';


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
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding
                  ),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 100,
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.7),

                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset:  Offset(0,10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23),
                        )
                      ]
                  ),


                ),
              )

            ]
        )
    );

    }
  }



