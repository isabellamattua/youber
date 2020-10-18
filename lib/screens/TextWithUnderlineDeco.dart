import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';

class TextWithUnderlineDeco extends StatelessWidget {
  const TextWithUnderlineDeco({
    Key key,
    this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container (
        height: 30,
        child: Stack (
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(
                text,
                style: TextStyle(fontSize: 20 , fontWeight:  FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 5,
                color:kDarkerTextColor.withOpacity(0.2),
              ),
            )

          ]
          ,
        )
    );
  }
}



