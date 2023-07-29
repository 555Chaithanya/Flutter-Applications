import 'package:flutter/material.dart';

import 'btm_navgation.dart';

void main() {
  runApp(new Navigator());
}

class Navigator extends StatelessWidget {
  Navigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom_NAvigation_Bar',
      home: new Navigation(),
    );
  }
}
