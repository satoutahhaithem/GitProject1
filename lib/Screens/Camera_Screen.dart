import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';

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
                setState(() {});
              },
              child: Text('scan'))
        ],
      ),
    );
  }
}
