import 'package:flutter/material.dart';

class HackerNewsPage extends StatefulWidget {
  @override
  _HackerNewsPageState createState() => new _HackerNewsPageState();
}

class _HackerNewsPageState extends State<HackerNewsPage> {

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      body: new Center(
        child: new Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            )
          ],
        ),
      ),
    );
  }
}