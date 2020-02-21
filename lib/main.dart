import 'package:flutter/material.dart';

import './pages/login.dart';
import './pages/awards_page.dart';
import './pages/home_screen.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ideal Way',
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.blue[300],
        primarySwatch: Colors.orange,
        backgroundColor: Colors.teal[50],
      ),
      routes:{
        '/' : (ctx) => Login(),
        AwardsPage.routeName : (ctx) => AwardsPage(),
        HomeScreen.routeName : (ctx) => HomeScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        );
      },
    );
  }
}