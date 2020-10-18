import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';


class OrderBox extends StatelessWidget {
  const OrderBox({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding /2.5
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
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 20 , fontWeight:  FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),



        ],




      ),
    );
  }
}

