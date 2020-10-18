import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/components/app_bar.dart';
import 'package:youber/screens/components/c_body.dart';

class cHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: CBody(),
    );
  }
}

