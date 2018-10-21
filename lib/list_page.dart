import 'dart:convert';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'my_data_pojo.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final String appBarTitle = "List";
  final String url = "https://swapi.co/api/people/";
  List listData;

  @override
  void initState() {
    super.initState();
    this.fetchDataList();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(appBarTitle),
        backgroundColor: Colors.red,
      ),
      body: new ListView.builder(
          itemCount: listData == null? 0 : listData.length,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0.0),
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Card(
                      child: new Container(
                        child: new Column(
                          children: <Widget>[
                            new Text("Name: " + listData[index]['name'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                              ),),
                            new Text("Height: " + listData[index]['height']),
                            new Text("Gender: " + listData[index]['gender'])
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        padding: EdgeInsets.all(20.0),
                      ),
                      elevation: 2.0,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Future<String> fetchDataList() async {
    var response = await http.get(
      // encode the url to remove spaces
      Uri.encodeFull(url),
      headers: {"Accept": "application/json"}
    );

    // print the response

    print(response.body);
    setState(() {
      var convertJsonData = json.decode(response.body);
      listData = convertJsonData['results'];
    });

    return "success";
  }
}
