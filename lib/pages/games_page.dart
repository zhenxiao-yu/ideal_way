import 'package:flutter/material.dart';
import 'package:ideal_way/widgets/page_widgets.dart';
import '../widgets/main_drawer.dart';

class GamesPage extends StatefulWidget {
  static const routeName = '/gamesPage';
  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    //could use to scale? double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: MainDrawer(),
       backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Awards"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Stack(
          children: <Widget>[
            awardBar("Level 1", 1, "Level 2", 1, "Level 3", 1),
            awardName("Empathy"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBar("Level 1", 0.5, "Level 2", 0.5, "Level 3", 0.5),
            awardName("Leadership"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBar("Level 1", 0.5, "Level 2", 0.5, "Level 3", 0.5),
            awardName("Teamwork"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBar("Level 1", 0.5, "Level 2", 0.5, "Level 3", 0.5),
            awardName("Cooperation"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBar("Level 1", 0.5, "Level 2", 0.5, "Level 3", 0.5),
            awardName("Empathy"),
          ],
        ),
      ])),
    );
  }
}



