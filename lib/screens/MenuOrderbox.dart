import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';


class MenuOrderBox extends StatelessWidget {
  const MenuOrderBox({
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
                vertical: kDefaultPadding /4
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 70,
            decoration: BoxDecoration(
                color: kLighterTonePrimaryColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    offset:  Offset(0,10),
                    blurRadius: 50,
                    color: kLighterTonePrimaryColor.withOpacity(0.23),
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


                //trying to make a glowing edge to show the status
                //glows: red: proccesing food, green: food is read, purple: abandon food donate

                Spacer(),
                // need to float left and make thinner
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  color: kLighterTonePrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "More",
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 100,
                ),
              ],
            ),
          ),



        ],




      ),
    );
  }
}

