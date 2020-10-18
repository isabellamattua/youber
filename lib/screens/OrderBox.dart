import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';


class OrderBox extends StatelessWidget {
  const OrderBox({
    Key key,
     this.orderNumber,  this.name,
  }) : super(key: key);


  final String orderNumber;
  final String name;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          ListView (
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: const <Widget>[
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 56.0),
                  title: Text(orderNumber),
                  subtitle: Text(name),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
        ]
    )
    ]
    )
    );

  }
}

