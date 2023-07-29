import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:alert_dialog/alert_dialog.dart';

class actbar extends StatelessWidget {
  const actbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('action bar')),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
            onPressed: () async {
              return alert(context,
                  title: Text("Congrats"),
                  content: Text("You won a car"),
                  textOK: Text("Close"));
            },
            child: Text('Show alert dialogue')),
      ),
    );
  }
}
