import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

class CameraScreen extends StatefulWidget {
  static final String id = '/CameraScreen';
  @override
  State<StatefulWidget> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  String qrCode = 'Not yet Scanned';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: kBlueColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            qrCode,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          // ignore: deprecated_member_use
          FlatButton(
              onPressed: () async {
                var scanning = await BarcodeScanner.scan();
                setState(() {
                  qrCode = scanning.toString();
                });
              },
              child: Text('scan'))
        ],
      ),
    );
  }
}
