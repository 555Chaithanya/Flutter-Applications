import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class qrScanner extends StatefulWidget {
  const qrScanner({Key? key}) : super(key: key);

  @override
  State<qrScanner> createState() => _qrScannerState();
}

class _qrScannerState extends State<qrScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text("Scan QR"),
          ),
        ],
      ),
    );
  }
}
