import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youber/screens/routes.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(child:
    Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("gobento@gmail.com"),
              accountEmail: Text("Go Bento"),
          currentAccountPicture: CircleAvatar(
           child: Image.asset("assets/img/test.jpg"),
           ),
          ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () => Navigator.pushReplacementNamed(context, Routes.home_screen),

      ),
      ListTile(
        leading: Icon(Icons.menu_book),
        title: Text("Menu"),
        onTap: () => Navigator.pushReplacementNamed(context, Routes.menu_screen),

      ),
      ListTile(
        leading: Icon(Icons.food_bank),
        title: Text("Take out"),
      ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text("Account"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
       ]
    ),
    );
  }
}