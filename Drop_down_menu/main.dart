import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropDown Widget',
      home: new drop_widget(),
    );
  }
}

class drop_widget extends StatefulWidget {
  const drop_widget({Key? key}) : super(key: key);

  @override
  State<drop_widget> createState() => _drop_widgetState();
}

class _drop_widgetState extends State<drop_widget> {
  var list1 = [
    "__Select a Country__",
    "India",
    "Vietnam",
    "Singapore",
    "France"
  ];
  var selected = "__Select a Country__";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DropDown Button"),
          backgroundColor: Colors.black38,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: DropdownButton(
                  value: selected,
                  items: list1.map((item) {
                    return DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (item) {
                    print("You selected $item");
                    setState(() {
                      item = selected;
                    });
                  }),
            ),
          ],
        ));
  }
}
