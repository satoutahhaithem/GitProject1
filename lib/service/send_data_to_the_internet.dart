import 'dart:async';
import 'dart:convert';
import 'dart:io' show Platform;
import 'package:attendance_app/Screens/Login/google_sign_in_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:attendance_app/main.dart';

/*
'student_Id'

'session_Id' : hada ikoun partie mn string li ytscanna mn qr code

'device_type' android/ ios

'device_id'

'qr_code_string': ykoun fiha 6 characters lwala mn string li tscanniha

'scanning_time'

'sending_time'
 */
class SendData {
  final String url;

  SendData(this.url);

  Future<http.Response> sendData(Data data) {
    return http.post(
      Uri.http(url, ""),
      body: jsonEncode(
        <String, dynamic>{
          "student id": data.studentId,
          "sessionId": data.sessionId,
          "deviceType": data.deviceType,
          "deviceId": data.deviceId,
          "qrCodeString": data.qrCodeString,
          "scanningTime": data.scanningTime,
          "sendingTime": data.sendingTime,
        },
      ),
    );
  }
}

class Data {
  String studentId;
  int sessionId;
  String deviceType;
  String deviceId;
  String qrCodeString;
  Duration scanningTime;
  Duration sendingTime;
}

Data data = Data();
