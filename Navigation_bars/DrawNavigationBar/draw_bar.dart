import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawer_bar extends StatefulWidget {
  const drawer_bar({Key? key}) : super(key: key);

  @override
  State<drawer_bar> createState() => _drawer_barState();
}

class _drawer_barState extends State<drawer_bar> {
  var currentSelectedItem = 0;
  var list = [
    Icon(Icons.settings),
    Icon(Icons.qr_code_rounded),
    Icon(Icons.details),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SideDrawBar Widget"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text(
                    "Additional features",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    currentSelectedItem = 0;
                  });
                },
              ),
              ListTile(
                title: Text('QR Generator'),
                leading: Icon(
                  Icons.qr_code_rounded,
                ),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    currentSelectedItem = 1;
                  });
                },
              ),
              ListTile(
                title: Text('About'),
                leading: Icon(Icons.details),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    currentSelectedItem = 2;
                  });
                },
              ),
            ],
          ),
        ),
        body: Center(child: list[currentSelectedItem]));
  }
}
