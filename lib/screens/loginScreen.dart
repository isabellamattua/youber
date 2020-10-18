import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/home_screen.dart';
import 'package:nice_button/nice_button.dart';

class LoginScreen extends StatelessWidget {
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
                  Container(
                    decoration: BoxDecoration(color: kBackgroundColor.withOpacity(0.25)),
                  ),
                  Positioned(
                    //USERNAME
                    top: size.height * 0.45,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: 54,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kLighterTonePrimaryColor.withOpacity(0.60),
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "username",
                          hintStyle: TextStyle(
                            color: kDarkerTextColor.withOpacity(0.75),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    //PASSWORD
                    top: size.height * 0.60,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: 54,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kLighterTonePrimaryColor.withOpacity(0.60),
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: TextStyle(
                            color: kDarkerTextColor.withOpacity(0.75),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.75,
                    left: 0,
                    right: 0,
                    child:NiceButton(
                      width: 255,
                      elevation: 8.0,
                      radius: 52.0,
                      text: "Login",
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