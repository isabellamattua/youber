import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';
import 'package:youber/screens/OrderDetails.dart';


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
              children:  <Widget>[
              Card(
                child: ListTile(
                  leading: Image.asset("assets/icons/basket.png", height: 30, width: 30),
                  title: Text(orderNumber),
                  subtitle: Text(name),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    // Navigate to second route when tapped.
                    Navigator.push(context, MaterialPageRoute( builder: (context) {
                      return OrderDetails();
                    }
                    ));
                  },
                ),
              ),
        ]
    )
    ]
    )
    );

  }
}



