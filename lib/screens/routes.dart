import 'package:flutter/cupertino.dart';
import 'package:youber/screens/home_screen.dart';
import 'package:youber/screens/menu_Screen.dart';


class Routes {
  static const String home_screen = HomeScreen.routeName;
  static const String menu_screen = MenuScreen.routeName;

  static var routeName;


  static getRoutes(BuildContext context) {
    return {
      home_screen: (context) => HomeScreen(),
      menu_screen: (context) => MenuScreen(),
    };
  }
}
