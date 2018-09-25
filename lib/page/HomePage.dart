import 'package:flutter/material.dart';
import 'package:github_trending/widget/BottomTab.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('热门'),
      ),
      body: Center(child: Text('Trending page!')),
      bottomNavigationBar: new BottomTab()
    );
  }
}
