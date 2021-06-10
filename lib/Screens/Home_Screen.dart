import 'dart:io';
import 'dart:convert';

import 'package:attendance_app/Screens/Camera_Screen.dart';
import 'package:attendance_app/Screens/Login_Screen.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/Wigdet.dart';
import 'package:http/http.dart' as http;
import 'package:attendance_app/const.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Loading_Screen.dart';
import 'Login/google_sign_in_provider.dart';

class HomeScreen extends StatefulWidget {
  final String studentInfo;
  static final String id = '/HomeScreen';
  final String photoUrl;
  final String lessonInfo;

  const HomeScreen({Key key, this.studentInfo, this.photoUrl, this.lessonInfo})
      : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String lesson = "";
  String deviceId = "";
  Future<void> getDeviceId() async {
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
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    print('inside Home screen lesson info ${widget.lessonInfo}');
    Map<String, dynamic> lessonInf = json.decode(widget.lessonInfo);
    return Scaffold(
      backgroundColor: Color(0xffd9d9d9),
      appBar: AppBar(
        backgroundColor: kBlueColor,
      ),
      drawer: Drawer(
        child: StudentDrawer(
          studentInfo: widget.studentInfo,
          photoUrl: widget.photoUrl,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: height / 13,
          ),
          myCard(
            height: height / 10,
            title: 'Previous :',
            // lesson: 'Analyse 03',
            lesson:
                '${lessonInf["last"] == null ? '*******' : lessonInf["last"]["module"]}',
            isVisible: true,
          ),
          SizedBox(
            height: height / 40,
          ),
          CurrentWidget(
            height: height / 6,
            // lesson: 'POO',
            lesson:
                '${lessonInf["now"] == null ? '*******' : lessonInf["now"]["module"]}',
            semestre: 'S2',
            laDate:
                '${lessonInf["now"] == null ? '*******' : lessonInf["now"]["starting"]}',
          ),
          SizedBox(
            height: height / 35,
          ),
          myCard(
            height: height / 10,
            title: 'Next  :',
            // lesson: 'English',
            lesson:
                '${lessonInf["next"] == null ? '*******' : lessonInf["next"]["module"]}',
            isVisible: false,
            specialForNextWidget: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: height / 9,
            ),
            child: GestureDetector(
              onTap: () async {
                await getDeviceId();
                print(
                    'device id___________________________________________________'
                    '$deviceId--------------------------------------------'
                    '____________________________________________________');
                Navigator.pushNamed(context, CameraScreen.id);
              },
              child: IconsWidget(
                icon: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                  size: height / 12,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height / 10,
          ),
          /*  Visibility(
                    visible: false,
                    child: IconsWidget(
                      icon: Icon(
                        Icons.group_rounded,
                        color: Color(0xFFDBD1D1),
                        size: 50,
                      ),
                    ),
                  ),*/
        ],
      ),
    );
  }
}
