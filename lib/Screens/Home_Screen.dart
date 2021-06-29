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

  HomeScreen({this.studentInfo, this.photoUrl, this.lessonInfo});

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

    String timeStartingLast =
        lessonInf["last"] == null ? "****" : lessonInf["last"]["starting"];
    String timeEndingLast =
        lessonInf["last"] == null ? "****" : lessonInf["last"]["ending"];
    String timeStartingNext =
        lessonInf["last"] == null ? "****" : lessonInf["last"]["starting"];
    String timeEndingNext =
        lessonInf["last"] == null ? "****" : lessonInf["last"]["ending"];
    String dayOfTheWeek =
        lessonInf["next"] == null ? "" : lessonInf["next"]["day_Of_Week"];
    return Scaffold(
      backgroundColor: Color(0xffd9d9d9),
      appBar: AppBar(
          backgroundColor: kBlueColor,
          title: Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.25),
            child: Text(
              dayOfTheWeek.toUpperCase(),
              style: kTitleTextStyle,
            ),
          )),
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
            height: height / 7,
            title: 'Previous :',
            // lesson: 'Analyse 03',
            lesson:
                '${lessonInf["last"] == null ? '*******' : lessonInf["last"]["module"]}',
            isVisible: true,
            lessonType:
                '${lessonInf["last"] == null ? '' : lessonInf["last"]["lecture_Type"]}',
            starting: '${timeStartingLast.substring(0, 5)}',
            ending: '${timeEndingLast.substring(0, 5)}',
            professor: lessonInf["last"] == null
                ? "*****"
                : lessonInf["last"]["professor"],
          ),
          SizedBox(
            height: height / 40,
          ),
          CurrentWidget(
            height: height / 6,
            lesson:
                '${lessonInf["now"] == null ? '*******' : lessonInf["now"]["module"]}',
            startingCurrent:
                "${lessonInf["now"] == null ? '*******' : lessonInf["now"]["starting"]}",
            endingCurrent:
                "${lessonInf["now"] == null ? '*******' : lessonInf["now"]["ending"]}",
            professor:
                "${lessonInf["now"] == null ? '*******' : lessonInf["now"]["professor"]}",
            lessonType:
                "${lessonInf["now"] == null ? '*******' : lessonInf["now"]["lecture_Type"]}",

            // lesson: 'Algorithme',
            // startingCurrent: '08:00',
            // endingCurrent: '09:30',
            // professor: 'Si Mohammed Noureddine',
            // lessonType: 'cours',
          ),
          SizedBox(
            height: height / 35,
          ),
          myCard(
            height: height / 7,
            title: 'Next  :',
            // lesson: 'English',
            lesson:
                '${lessonInf["next"] == null ? '*******' : lessonInf["next"]["module"]}',
            isVisible: false,
            specialForNextWidget: 30,
            lessonType:
                '${lessonInf["next"] == null ? '' : lessonInf["next"]["lecture_Type"]}',
            starting: '${timeStartingNext.substring(0, 5)}',
            ending: '${timeEndingNext.substring(0, 5)}',
            professor: lessonInf["next"] == null
                ? "*****"
                : lessonInf["next"]["professor"],
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CameraScreen(
                      studentInfo: widget.studentInfo,
                    ),
                  ),
                );
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
