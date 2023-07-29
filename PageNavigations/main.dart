import 'package:flutter/material.dart';
import 'package:page_navigator/navigations/first_page.dart';

void main() {
  runApp(new HomePage());
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home page",
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: new First_page(),
    );
  }
}
