import 'package:attendance_app/Screens/Accepted_Screen.dart';
import 'package:attendance_app/Screens/Declined_Screen.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:attendance_app/const.dart';
import 'package:http/http.dart' as http;

class LoadingScreenCamera extends StatefulWidget {
  final int studentId;
  final String deviceType;
  final String deviceId;
  final String qrCodeString;
  final String lectureId;
  final String scanningTime;

  LoadingScreenCamera(this.studentId, this.deviceType, this.deviceId,
      this.qrCodeString, this.lectureId, this.scanningTime);
  @override
  _LoadingScreenCameraState createState() => _LoadingScreenCameraState();
}

class _LoadingScreenCameraState extends State<LoadingScreenCamera> {
  Future<String> sendQrDetails(
      int studentId,
      String deviceType,
      String deviceId,
      String qrCodeString,
      String lectureId,
      String scanningTime) async {
    final String url = "$urlLocalServer/api/record";
    final res = await http.post(
      Uri.parse(url),
      body: {
        "student_Id": studentId,
        "device_type": deviceType,
        "device_id": deviceId,
        "qr_code_string": qrCodeString,
        "lecture_Id": lectureId,
        "scanning_time": scanningTime,
      },
    );
    final String responseString = res.body;
    print(url);
    print('_______________'
        'case1'
        '_________________');
    // print(responseString);
    return responseString;
  }

  @override
  void initState() async {
    await sendQrDetails(widget.studentId, widget.deviceType, widget.deviceId,
        widget.qrCodeString, widget.lectureId, widget.scanningTime);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlueColor,
      child: Center(
        child: SpinKitChasingDots(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
