import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:youber/screens/app_drawer.dart';
=======
import 'package:youber/screens/CommunityCart.dart';

import 'package:youber/screens/body.dart';


class HomeScreen extends StatelessWidget {
  static const String routeName = "/home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: AppDrawer(),
      appBar: buildAppBar(),
      body: Body(),
          bottomNavigationBar: BottomNavigationBar (
            type: BottomNavigationBarType.fixed,
            items:[
              BottomNavigationBarItem(
                icon: Image.asset("assets/icons/basket.png", height: 30, width: 30),
                title: new Text("Community basket"),
              ),
              BottomNavigationBarItem(
                //icon:Icon(Icons.home),
                icon: Image.asset("assets/icons/payment.png", height: 30, width: 30),
                title: new Text("Home"),

              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/icons/setting.png", height: 30, width: 30),
                title: new Text("Settings"),
              )

            ],
          ),

        appBar: buildAppBar(context),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                  "assets/icons/basket.png", height: 30, width: 30),
              title: new Text("Community basket"),
            ),
            BottomNavigationBarItem(
              //icon:Icon(Icons.home),
              icon: Image.asset(
                  "assets/icons/payment.png", height: 30, width: 30),
              title: new Text("Home"),


            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                  "assets/icons/setting.png", height: 30, width: 30),
              title: new Text("Settings"),
            )

          ],
        )

    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {
          print("hello");
          // ignore: missing_return
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Pick up for Order 171"),
                    content: Text("The vehicle register for pick for Order 171 is here!\n To go POS to get details about the car."),
                  );
                }
            );
            //CommunityCart();
          }
          ));
        },
      ),
    );
  }
}




