import 'package:flutter/material.dart';
import 'package:tab_bar_nav/tab_bar.dart';

void main() {
  runApp(const tab_nav());
}

class tab_nav extends StatelessWidget {
  const tab_nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "tab navigations",
      color: Colors.teal,
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.cyan, brightness: Brightness.light),
      home: new tab_bar(),
    );
  }
}
