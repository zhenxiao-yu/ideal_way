import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class AwardsPage extends StatefulWidget {
  static const routeName = '/awardsPage';

  @override
  _AwardsPageState createState() => _AwardsPageState();
}

class _AwardsPageState extends State<AwardsPage> {
  Widget awardTitle() {
    return ListTile();
  } //consider using methods to make code look cleaner

  Widget awardName() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    //could use to scale? double width = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: MainDrawer(),
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("AWARDS"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 7,
                  child: Card(
                    color: Colors.orange,
                    margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                    child: Center(
                      child: Text(
                        "Empathy",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 6,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Card(
                      color: Colors.deepOrange[50],
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Image.asset('assets/trophy.png', height: 50),
                              Text("Level 1"),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset('assets/trophy.png', height: 50),
                              Text("Level 2"),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset('assets/trophy.png', height: 50),
                              Text(
                                "Level 3",
                                style: TextStyle(
                                    //color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
