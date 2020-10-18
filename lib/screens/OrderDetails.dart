import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/home_screen.dart';
import 'package:nice_button/nice_button.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Container(
              height: size.height*1,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    //Text
                    left: 0,
                    right: 0,
                    height: size.height * 0.95,
                    child: Padding(

                      padding: EdgeInsets.only(
                        left: kDefaultPadding,
                        bottom: 0,
                      ),
                      child: Row (
                        children: <Widget>[
                          Text(
                            "Order Details: \n\n\n1x Tripple Krabby Patty \t\t\t\t\t\t\t\t\t\ 12.00\n2x Golden Loaf \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t 8.00"
                                "\n1x Kelp Shake\t\t\t\t\t\t\t\t\t\ \t\t\t\t\t\t\t\t\t\ \t\t\t\t\t\t\t\t\t\ 5.99"
                            "\n\n\n\n Total: \t\t\t\t\t\t\t\t\t\ \t\t\t\t\t\t\t\t\t\ \t\t\t\t\t\t\t\t\t\ 25.99",

                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline5.copyWith(
                                color: Colors.black, fontWeight: FontWeight.bold
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    //TITLE
                    top: 0,
                    left: 0,
                    right: 0,
                    height: size.height*.25,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: kDefaultPadding,
                        bottom: 0,
                      ),
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                          color: kPrimaryColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kLighterTonePrimaryColor.withOpacity(0.60),
                            )
                          ]),
                      child: Row (
                        children: <Widget>[
                          Text(
                            "Order: 171",
                            style: Theme.of(context).textTheme.headline5.copyWith(
                                color: Colors.white, fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: size.height * 0.85,
                    left: 0,
                    right: 0,
                    child:NiceButton(
                      width: 255,
                      elevation: 8.0,
                      radius: 52.0,
                      text: "Update Order",
                      background: kLighterTonePrimaryColor.withOpacity(0.9),
                      onPressed: () {
                        print("hello");
                        Navigator.push(context, MaterialPageRoute( builder: (context) {
                          return HomeScreen();
                        }));
                      },
                    ),
                  )

                ],
              ),
            )
          ],
        )
    );
  }
}