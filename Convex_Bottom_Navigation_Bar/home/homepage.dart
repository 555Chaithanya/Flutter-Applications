import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'home.dart';
import 'qr_sacnner.dart';
import 'listing.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  final _pageOption = [Home(), qrScanner(), Listing()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convex Bottom BAr"),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icon(Icons.home_outlined), title: "Home"),
          TabItem(icon: Icon(Icons.qr_code_scanner), title: "Scan Qr"),
          TabItem(icon: Icon(Icons.list_rounded), title: "List"),
        ],
        initialActiveIndex: selectedPage,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
      body: _pageOption[selectedPage],
    );
  }
}
