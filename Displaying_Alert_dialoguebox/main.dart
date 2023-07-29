import 'package:alert_dialogue/pages/action_bar.dart';
import 'package:flutter/material.dart';
import 'package:alert_dialog/alert_dialog.dart';

void main() {
  runApp(new action_bar());
}

class action_bar extends StatelessWidget {
  action_bar({Key? key}) : super(key: key);
  final _scafoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "action bar",
      color: Colors.white70,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: new actbar(),
    );
  }
}
