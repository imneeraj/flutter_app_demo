import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String appDescription =
      "This app contains demos of flutter. Here we will add "
      "all the basic functionality that is there is a normal application";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home"),
        ),
        body: new Container(
          padding: EdgeInsets.all(15.0),
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  appDescription,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent
                  ),
                  textAlign: TextAlign.center,//TextAlign.justify,
                )
              ],
            ),
          ),
        ));
  }
}
