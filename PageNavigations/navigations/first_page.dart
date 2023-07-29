import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:page_navigator/navigations/second_page.dart';

class First_page extends StatelessWidget {
  const First_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondpage()));
            },
            icon: Icon(Icons.home)),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
            "Now i have finally learned page navigations .Check that by clicking on Home icon and see"),
      ),
    );
  }
}
