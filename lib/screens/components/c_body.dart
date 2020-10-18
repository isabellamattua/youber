import 'package:flutter/material.dart';
import 'package:youber/constants.dart';

class CBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(),
      ],
    );

  }


}

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: kPrimaryColor.withOpacity(0.50),
        )
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Image.asset("assets/icons/search.png"),
          hintText: "Search Here",
          hintStyle: TextStyle(color: kLighterTonePrimaryColor),
          ),
      ),
    );
  }
}