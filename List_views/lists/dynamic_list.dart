import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class dynamic_list extends StatelessWidget {
  dynamic_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list_alt_rounded),
        title: Text('Dynamic List Widget'),
      ),
      body: createList(),
    );
  }

  List<String> generateListItems() {
    List<String> list = List.generate(1000, (counter) => "Item $counter");

    return list;
  }

  Widget createList() {
    var listitems = generateListItems();
    var listview = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Text('$index'),
        title: Text(listitems[index]),
        onTap: () {
          print(listitems[index]);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondScreen(listitems[index])));
        },
      );
    });
    return listview;
  }
}

class SecondScreen extends StatelessWidget {
  String title;
  SecondScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.brown, child: Text(title)),
      ),
      body: Center(child: Text(title)),
    );
  }
}
