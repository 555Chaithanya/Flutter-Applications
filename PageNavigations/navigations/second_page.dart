import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_navigator/navigations/third_page.dart';

class secondpage extends StatelessWidget {
  secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => thirdpage()));
            },
            child: Text("Go to next page")),
      ),
    );
  }
}
