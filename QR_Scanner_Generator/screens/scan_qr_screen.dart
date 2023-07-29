// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:async';

import 'package:barcode_scan/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String barcode = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Code Scanner"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ElevatedButton(
                  onPressed: scan, child: const Text("Start Camera Scan")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                barcode,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future scan() async {
    try {
      await BarcodeScanner.scan().then(
          (value) => setState(() => barcode = value.rawContent.toString()));
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          barcode = "The user didnt grant the camera permission!";
        });
      } else {
        setState(() {
          barcode = "unknownError: $e";
        });
      }
    } on FormatException {
      setState(() {
        barcode =
            "null (user returned using backbuttonbefore scanning anything.Result)";
      });
    } catch (e) {
      setState(() {
        barcode = "Unknown error: $e";
      });
    }
  }
}
