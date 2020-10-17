import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';
import 'package:youber/screens/OrderBox.dart';
import 'package:http/http.dart' as http;


import 'header_bar.dart';

class Body extends StatelessWidget {

  Future<http.Response> fetchAlbum() {
    return http.get('https://jsonplaceholder.typicode.com/albums/1');
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              header_bar(size: size),
              TextWithUnderlineDeco( text: "Orders"),
              OrderBox(text: "Order:1546215\nGerge"),
              OrderBox(text: "Order:1546215\nGerge"),
              OrderBox(text: "Order:1546215\nGerge"),
              OrderBox(text: "Order:1546215\nGerge"),
              OrderBox(text: "Order:1546215\nGerge"),
              OrderBox(text: "Order:1546215\nGerge")

            ]
        )
    );

    }
  }



