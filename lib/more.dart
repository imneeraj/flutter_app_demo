import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'bottom_task_bar.dart';
import 'page_one.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("More"),
        elevation:
        defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Neeraj Devil"),
              accountEmail: new Text("nkneeraj866@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: new Text("N.D"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                    child: new Text("N.k"))
              ],
            ), new ListTile(
              title: new Text("Page One"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new PageOne("Page One")));
              },
            ),
            new ListTile(
                title: new Text("Bottom App Bar"),
                trailing: new Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/a");
                }),
            new ListTile(
              title: new Text("Google Bottom Task Bar"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new BottomTaskBar("Bottom Task Bar")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
