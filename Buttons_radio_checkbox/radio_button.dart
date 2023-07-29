import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int selectedPos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio(
            value: 0,
            groupValue: selectedPos,
            onChanged: (val) {
              print("Selected $val");
              setState(() {
                selectedPos = 0;
              });
            },
          ),
          Radio(
            value: 1,
            groupValue: selectedPos,
            onChanged: (val) {
              print("Selected $val");
              setState(() {
                selectedPos = 1;
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedPos,
            title: Text("Male"),
            onChanged: (val) {
              print("Selected $val");
              setState(() {
                selectedPos = 2;
              });
            },
          ),
          RadioListTile(
            value: 3,
            groupValue: selectedPos,
            title: Text("Male"),
            onChanged: (val) {
              print("Selected $val");
              setState(() {
                selectedPos = 3;
              });
            },
          ),
        ],
      ),
    );
  }
}
