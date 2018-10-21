import 'package:flutter/material.dart';
import 'home_page.dart';
import 'more.dart';
import 'network_requests.dart';
import 'list_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  final PageController pageController = new PageController();
  int _selectedIndex = 0;
  static const Curve scrollCurve = Curves.fastOutSlowIn;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
        primaryColor: Colors.deepPurple),

      home: new Scaffold(
        body: new PageView(
          controller: pageController,
          onPageChanged: (int index)
          {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: <Widget>[
            new HomePage(),
            new ListPage(),
            new NetworkRequest(),
            new More(),
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (int index)
          {
            setState(() {
              _selectedIndex = index;
              pageController.animateToPage(
                _selectedIndex,
                duration: kTabScrollDuration,
                curve: scrollCurve,
              );
            });
          },

          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text("Home")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.format_list_numbered),
                title: new Text("List")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.network_wifi),
                title: new Text("Network")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.more_vert),
                title: new Text("More")),
          ],
        ),
      ),
    );
  }
}


