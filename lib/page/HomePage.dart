import 'package:flutter/material.dart';
import 'package:github_trending/widget/BottomTab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: choices.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Github热门'),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: [
            new Icon(Icons.directions_car),
            new Icon(Icons.directions_bike),
            new Icon(Icons.directions_boat),
            new Icon(Icons.directions_bus)
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(
            controller: _tabController,
            tabs: choices.map((Choice choice) {
              return new Tab(
                text: choice.title,
                icon: new Icon(choice.icon),
              );
            }).toList()))
        );
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
];
