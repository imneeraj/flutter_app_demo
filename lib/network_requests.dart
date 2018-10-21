import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class NetworkRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Network"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Text("Hey, Drawer",
                style: new TextStyle(
                    fontSize: 20.0,
                    decorationStyle: TextDecorationStyle.dotted
                ),),
              padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
            )
          ],
        ),
      ),
    );
  }
}
