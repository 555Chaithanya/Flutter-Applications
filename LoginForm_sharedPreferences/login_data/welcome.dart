import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatelessWidget {
  String name, email, phone;
  WelcomePage({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Center(
      child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(children: [
              Text('Name:$name'),
            ]),
            Row(children: [
              Text('EmailAddress:$email'),
            ]),
            Row(children: [
              Text('Phone:$phone'),
            ]),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("go back")),
          ])),
    )));
  }
}
