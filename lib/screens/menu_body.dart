import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/constants.dart';
import 'package:youber/screens/TextWithUnderlineDeco.dart';
import 'package:youber/screens/MenuOrderBox.dart';
import 'package:youber/screens/OrderBox.dart';
import 'package:http/http.dart' as http;

import 'package:youber/screens/header_bar.dart';


class MenuBody extends StatelessWidget {

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
              TextWithUnderlineDeco( text: "Krusty Crabs Menu"),
              TextWithUnderlineDeco( text: "Orders"),
              MenuOrderBox(text: "Order:1546215\nGerge"),
              Image.network('https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/LbJRypU3IW28jbJtYaXSLd2OANQ=/1660x934/smart/filters:no_upscale()/cloudfront-us-east-1.images.arcpublishing.com/dmn/LOMP2Y6GBVD7NJEW5NCVQNJHRE.jpeg',
                height: 100,
                width: 360,
                fit: BoxFit.fitWidth,
              ),

              OrderBox(text: "Order:1546215\nGerge"),
              Image.network('https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/LbJRypU3IW28jbJtYaXSLd2OANQ=/1660x934/smart/filters:no_upscale()/cloudfront-us-east-1.images.arcpublishing.com/dmn/LOMP2Y6GBVD7NJEW5NCVQNJHRE.jpeg',
                height: 100,
                width: 360,
                fit: BoxFit.fitWidth,
              ),
              MenuOrderBox(text: "Order:1546215\nGerge"),
              Image.network('https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/LbJRypU3IW28jbJtYaXSLd2OANQ=/1660x934/smart/filters:no_upscale()/cloudfront-us-east-1.images.arcpublishing.com/dmn/LOMP2Y6GBVD7NJEW5NCVQNJHRE.jpeg',
                height: 100,
                width: 360,
                fit: BoxFit.fitWidth,
              ),
              OrderBox(text: "Order:1546215\nGerge"),
              Image.network('https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/LbJRypU3IW28jbJtYaXSLd2OANQ=/1660x934/smart/filters:no_upscale()/cloudfront-us-east-1.images.arcpublishing.com/dmn/LOMP2Y6GBVD7NJEW5NCVQNJHRE.jpeg',
                height: 100,
                width: 360,
                fit: BoxFit.fitWidth,
              ),
              MenuOrderBox(text: "Order:1546215\nGerge"),
              Image.network('https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/LbJRypU3IW28jbJtYaXSLd2OANQ=/1660x934/smart/filters:no_upscale()/cloudfront-us-east-1.images.arcpublishing.com/dmn/LOMP2Y6GBVD7NJEW5NCVQNJHRE.jpeg',
                height: 100,
                width: 360,
                fit: BoxFit.fitWidth,
              ),
              OrderBox(text: "Order:1546215\nGerge"),
              Image.network('https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/LbJRypU3IW28jbJtYaXSLd2OANQ=/1660x934/smart/filters:no_upscale()/cloudfront-us-east-1.images.arcpublishing.com/dmn/LOMP2Y6GBVD7NJEW5NCVQNJHRE.jpeg',
                height: 100,
                width: 360,
                fit: BoxFit.fitWidth,
              ),

              MenuOrderBox(text: "Order:1546215\nGerge")


            ]
        )
    );

  }
}



