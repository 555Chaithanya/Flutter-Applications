import 'package:flutter/material.dart';

import 'home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ConveX_bar Test",
      home: new HomePage(),
    );
  }
}
