import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youber/screens/menu_body.dart';
import 'package:youber/screens/app_drawer.dart';

class MenuScreen extends StatelessWidget {
  static const String routeName = "/menu_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: MenuBody(),


    );

  }
}
