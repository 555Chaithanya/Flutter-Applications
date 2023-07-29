import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class listing extends StatelessWidget {
  listing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list Widget"),
      ),
      body: createListView(),
    );
  }

  Widget createListView() {
    var listView = ListView(
      children: [
        ListTile(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.no_accounts_rounded)),
          title: Text('Jane'),
          subtitle: Text('+79......91'),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          onTap: () {
            print('calling....');
          },
        ),
        ListTile(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.no_accounts_rounded)),
          title: Text('Tanjiro'),
          subtitle: Text('+93......85'),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          onTap: () {
            print('calling....');
          },
        ),
        Container(
          color: Colors.black,
        ),
        Text('Add new contacts'),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.dialpad),
          backgroundColor: Colors.blue,
        ),
      ],
    );
    return listView;
  }
}
