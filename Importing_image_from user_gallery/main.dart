import 'package:flutter/material.dart';

void main() {
  runApp(new static_img());
}

class static_img extends StatelessWidget {
  const static_img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'internal Image importing',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter image'),
        ),
        body: Container(
          child: Column(
            children: [
              Image.asset(
                "images/pokemon.png",
                //width: 100,
                //height: 100,
              ),
              Image.network(
                  'https://www.clipartkey.com/mpngs/m/283-2835010_pokemon-logo-black-and-white.png'),
              Text('Name: Snorlax')
            ],
          ),
        ),
      ),
    );
  }
}
