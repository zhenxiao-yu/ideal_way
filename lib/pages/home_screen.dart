import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ideal Way"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: FloatingActionButton(
              heroTag: 'btn1',
              onPressed: null,
              child: Text("Single Player"),
            ),
          ),
          Center(
            child: FloatingActionButton(
              heroTag: 'btn2',
              onPressed: null,
              child: Text("Multi Player"),
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
