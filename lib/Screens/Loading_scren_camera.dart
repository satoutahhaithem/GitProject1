import 'dart:convert';

import 'package:attendance_app/Screens/Accepted_Screen.dart';
import 'package:attendance_app/Screens/Camera_Screen.dart';
import 'package:attendance_app/Screens/Declined_Screen.dart';
import 'package:attendance_app/Screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:attendance_app/const.dart';
import 'package:http/http.dart' as http;

class LoadingScreenCamera extends StatefulWidget {
  final String studentInfo;
  final int studentId;
  final String deviceType;
  final String deviceId;
  final String qrCodeString;
  final String lectureId;
  final DateTime scanningTime;

  LoadingScreenCamera(this.studentId, this.deviceType, this.deviceId,
      this.qrCodeString, this.lectureId, this.scanningTime, this.studentInfo);
  @override
  _LoadingScreenCameraState createState() => _LoadingScreenCameraState();
}

class _LoadingScreenCameraState extends State<LoadingScreenCamera> {
  var time;
  Future<String> sendQrDetails(
      int studentId,
      String deviceType,
      String deviceId,
      String qrCodeString,
      String lectureId,
      int scanningTime) async {
    var object = {
      "student_Id": studentId.toString(),
      "device_type": deviceType,
      "device_id": deviceId,
      "qr_code_string": qrCodeString,
      "lecture_Id": lectureId,
      "scanning_time": scanningTime.toString(),
    };
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

  // ignore: missing_return
  justDoIt() async {
    time = widget.scanningTime.millisecondsSinceEpoch ~/ 1000;
    var answer = await sendQrDetails(widget.studentId, widget.deviceType,
        widget.deviceId, widget.qrCodeString, widget.lectureId, time);
    return answer;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: justDoIt(),
        builder: (context, snapshot) {
          print(
              "${widget.studentId}, ${widget.deviceType}, ${widget.deviceId}, ${widget.qrCodeString}, ${widget.lectureId}, ${time}");
          print('answer _______________________________________${snapshot.data}'
              ''
              'answer_________________________________________________answer');
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == 'accepted') {
              return AcceptedScreen();
            } else if (snapshot.data == "rejected") {
              return DeclinedScreen();
            } else if (snapshot.data == null) {
              Fluttertoast.showToast(
                toastLength: Toast.LENGTH_LONG,
                msg: "This barcode doesn't exist",
              );
              return CameraScreen(
                studentInfo: widget.studentInfo,
              );
              // } else {
              //
              //   return CameraScreen();
              // }
            } else {
              return HomeScreen();
            }
          } else {
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
        });
  }
}
