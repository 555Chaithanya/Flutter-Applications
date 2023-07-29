import 'package:flutter/material.dart';
import 'package:static_listview/lists/dynamic_list.dart';

import 'lists/static_list.dart';

void main() {
  runApp(new list());
}

class list extends StatelessWidget {
  list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'List app', home: new dynamic_list());
  }
}
