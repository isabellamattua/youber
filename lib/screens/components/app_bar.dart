import 'package:flutter/material.dart';
import 'package:youber/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Image.asset("assets/icons/menu.png"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.title,
        children: [
          TextSpan(text: "Youber", style: TextStyle(color: kLighterTonePrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Image.asset("assets/icons/basket.png"),
        onPressed: () {},
      ),
    ],
  );
}