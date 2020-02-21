import 'package:flutter/material.dart';

import '../pages/awards_page.dart';
import '../pages/home_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26.0,
      ),
      title: Text(title,),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    print("EFINOIN");
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120.0,
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "IDEAL WAY!",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          buildListTile(
            "Awards",
            Icons.cake,
            () => Navigator.of(context).pushReplacementNamed(AwardsPage.routeName),
          ),
          buildListTile(
            "Home Screen",
            Icons.home,
            () => Navigator.of(context).pushReplacementNamed(HomeScreen.routeName),
          ),
        ],
      ),
    );
  }
}
