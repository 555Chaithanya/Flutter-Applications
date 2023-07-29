import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "switch button",
      home: new New_switch(),
    );
  }
}

class New_switch extends StatefulWidget {
  const New_switch({Key? key}) : super(key: key);

  @override
  State<New_switch> createState() => _New_switchState();
}

class _New_switchState extends State<New_switch> {
  bool status1 = false;
  bool status2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
              value: status2,
              onChanged: (val) {
                print("Switch status is $val");
                setState(() {
                  status2 = val;
                });
              }),
          SwitchListTile(
              value: status1,
              title: Text("Switch"),
              subtitle: Text("Switch status is $status1"),
              onChanged: (val) {
                print("Switch status is $val");
                setState(() {
                  status1 = val;
                });
              })
        ],
      ),
    );
  }
}
