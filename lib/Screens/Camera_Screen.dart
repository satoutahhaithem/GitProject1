import 'dart:convert';
import 'dart:io';

import 'package:attendance_app/Screens/Home_Screen.dart';
import 'package:attendance_app/Screens/Loading_Screen.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:attendance_app/service/send_data_to_the_internet.dart';
import 'package:http/http.dart' as http;

import 'Loading_scren_camera.dart';

class CameraScreen extends StatefulWidget {
  final String studentInfo;
  static final String id = '/CameraScreen';

  const CameraScreen({Key key, this.studentInfo}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  bool scan = true;
  Future<String> sendQrDetails(
      int studentId,
      String deviceType,
      String deviceId,
      String qrCodeString,
      String lectureId,
      int scanningTime) async {
    var object = jsonEncode(<String, String>{
      "student_Id": studentId.toString(),
      "device_type": deviceType,
      "device_id": deviceId,
      "qr_code_string": qrCodeString,
      "lecture_Id": lectureId,
      "scanning_time": scanningTime.toString(),
    });
    print('the object _______$object'
        '_______________________');
    final String url = "$urlLocalServer/api/record";
    final res = await http.post(
      Uri.parse(url),
      body: object,
    );
    final String responseString = res.body;
    print('_____________responseString '
        '$responseString'
        '_______________________');
    print('_______________'
        'case1'
        '_________________');
    // print(responseString);
    return responseString;
  }

  bool loading = false;
  GlobalKey qrKey = GlobalKey();
  QRViewController controller;
  String qrText = 'Nothing';
  var scanningTime;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: kBlueColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 10,
            child: QRView(
              overlay: QrScannerOverlayShape(
                borderRadius: 2,
                borderColor: kBackGroundColor,
                borderLength: 20,
                borderWidth: 10,
                cutOutSize: 300,
              ),
              key: qrKey,
              onQRViewCreated: _onQrViewCreate,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'ScanResult\n $qrText',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  void _onQrViewCreate(QRViewController controller) async {
    String deviceId = "Nothing";
    Future<String> getDeviceId() async {
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
      try {
        if (Platform.isAndroid) {
          var build = await deviceInfoPlugin.androidInfo;
          setState(() {
            deviceId = build.androidId;
          });
        } else if (Platform.isIOS) {
          var data = await deviceInfoPlugin.iosInfo;
          setState(() {
            deviceId = data.identifierForVendor;
          });
        }
      } catch (e) {
        print("___________________________"
            "erreur____________________$e"
            "--------------------------");
      }
      return deviceId;
    }

    await getDeviceId();
    print('deviceId_______________________________________$deviceId'
        '_____________________________________________________'
        'inside CameraScreen');
    String deviceType = Platform.isAndroid ? "android" : "ios";
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      String qrCodeString = "Nothing";
      String lectureId = "Nothing";
      Map<String, dynamic> studentInf = json.decode(widget.studentInfo);

      setState(() {
        scanningTime = DateTime.now();
        print('scanning time $scanningTime');
        qrText = scanData.code;
        if (qrText != 'Nothing' && scan) {
          qrCodeString = qrText.substring(0, 6);
          lectureId = qrText.substring(6);
          scan = false;
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => LoadingScreenCamera(
                      studentInf["id"],
                      deviceType,
                      deviceId,
                      qrCodeString,
                      lectureId,
                      scanningTime,
                      widget.studentInfo)));
        }
      });
    });

    // if (qrText != 'Nothing') {
    //   controller.dispose();
    //   // String response = await sendQrDetails(studentInf["id"], deviceType,
    //   //     deviceId, qrCodeString, lectureId, scanningTime);
    // }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
