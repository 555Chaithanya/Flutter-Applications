import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (val) {
            print("Check $val");
            setState(() {
              isChecked = val!;
            });
          },
        ),
        CheckboxListTile(
          value: isChecked,
          title: Text("Accept terms & conditions"),
          onChanged: (val) {
            print("Check $val");
            setState(() {
              isChecked = val!;
            });
          },
        ),
      ],
    ));
  }
}
