import 'package:flutter/material.dart';

import 'draw_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SideDrawBar',
      home: new drawer_bar(),
    );
  }
}
