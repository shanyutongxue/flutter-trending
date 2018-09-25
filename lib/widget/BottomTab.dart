import 'package:flutter/material.dart';

class BottomTab extends StatelessWidget {

List<Widget> tabs = [];

  @override
  Widget build(BuildContext context) {
    return new Material(
          //为了适配主题风格，包一层Material实现风格套用
          color: Theme.of(context).primaryColor, //底部导航栏主题颜色
          child: Text('底部导航栏', textAlign: TextAlign.center)
          // new TabBar(
          //   //TabBar导航标签，底部导航放到Scaffold的bottomNavigationBar中
          //   controller: _tabController, //配置控制器
          //   tabs: tabs,
          //   // indicatorColor: _indicatorColor, //tab标签的下划线颜色
          // ),
    );
  }
  
}