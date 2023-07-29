import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({Key? key}) : super(key: key);

  @override
  State<tab_bar> createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> {
  var list = [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.notifications),
    Icon(Icons.show_chart),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Navigator'),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.settings), text: 'Settings'),
            Tab(icon: Icon(Icons.notifications), text: 'notifications'),
            Tab(icon: Icon(Icons.show_chart), text: 'About'),
          ]),
        ),
        body: TabBarView(children: list),
      ),
    );
  }
}
