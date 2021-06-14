import 'dart:io';
import 'dart:convert';

import 'package:attendance_app/Screens/Home_Screen.dart';
import 'package:attendance_app/Screens/Loading_Screen.dart';
import 'package:attendance_app/Screens/Login/google_sign_in_provider.dart';
import 'package:attendance_app/Screens/Login/sign_in_logic.dart';
import 'package:attendance_app/const.dart';
import 'package:attendance_app/service/send_data_to_the_internet.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:device_info/device_info.dart';
import 'dart:io' show Platform;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class LoginScreen extends StatefulWidget {
  static final String id = '/LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String deviceType = "Nothing";
  String deviceId = "Nothing";
  Future<String> getLesson(String sectionId, String groupId) async {
    final String uri = "$urlLocalServer/api/lectures/now/$sectionId/$groupId";
    final res = await http.get(Uri.parse(uri));
    final String responseString = res.body;
    return responseString;
  }

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

  Future<String> getStudentDetails(
      String email, String deviceType, String deviceId) async {
    final String url = "$urlLocalServer/api/student/search";
    final res = await http.post(
      Uri.parse(url),
      body: {
        "email": email,
        "device_type": deviceType,
        "device_id": deviceId,
      },
    );

    final String responseString = res.body;

    print('_______________'
        'case1'
        '_________________');
    // print(responseString);
    return responseString;
  }

  Future<String> futureStudentInfo;
  String studentInfo = "Nothing";
  String lessonInfo = "Nothing";
  String lastEmail = "";
  String photoUrl = "";
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);

    justLogin() async {
      studentInfo = await getStudentDetails(
          provider.googleSignInAccount.email, deviceType, deviceId);
      if (FirebaseAuth.instance.currentUser != null) {
        await getDeviceId();
        deviceType = Platform.isAndroid ? "android" : "ios";
        print("in the just Login $deviceId");
        print("in the just Login $deviceType");
        print("in the just Login ${provider.googleSignInAccount.email}");
        if (!provider.isSignIn) {
          print('aaaaaaaaa');
          provider.logInGoogle();
        }
        print('11111111111111111');
        Map<String, dynamic> studentInf = json.decode(studentInfo);
        lessonInfo = await getLesson(studentInf["section_Id"].toString(),
            studentInf["group_Id"].toString());
        print('inside the just login $lessonInfo');
      }
      return provider.googleSignInAccount;
    }

    return FutureBuilder(
        future: justLogin(),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return LoginScr();
          } else if (snapshot.data == null) {
            return LoginScr();
          } else if (provider.googleSignInAccount.photoUrl != null) {
            return HomeScreen(
              studentInfo: studentInfo,
              photoUrl: provider.googleSignInAccount.photoUrl,
              lessonInfo: lessonInfo,
            );
          } else {
            return LoginScr();
          }
        });
  }
}

// ignore: must_be_immutable
class LoginScr extends StatefulWidget {
  @override
  _LoginScrState createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginScr> {
  Future<String> getLesson(String sectionId, String groupId) async {
    final String uri = "$urlLocalServer/api/lectures/now/$sectionId/$groupId";
    final res = await http.get(Uri.parse(uri));
    final String responseString = res.body;
    return responseString;
  }

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

  final String url = "$urlLocalServer/api/student/search";
  Future<String> getStudentDetails(
      String email, String deviceType, String deviceId) async {
    final res = await http.post(
      Uri.parse(url),
      body: {
        "email": email,
        "device_type": deviceType,
        "device_id": deviceId,
      },
    );
    final String responseString = res.body;

    print('_______________'
        'case1'
        '_________________');
    // print(responseString);
    return responseString;
  }

  String deviceId = "Nothing";

  String studentInfo = "";

  String myEmail = "";

  String lastCharEmail = "";

  bool loading = false;

  String lessonInfo = "Nothing";
  @override
  Widget build(BuildContext context) {
    return loading
        ? LoadingScreen()
        : Scaffold(
            backgroundColor: kBlueColor,
            resizeToAvoidBottomInset: true,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // width: 137.0,
                    // height: 168.0,
                    child: Hero(
                      tag: 'logoTag',
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/attendance_logo4.png'),
                        radius: MediaQuery.of(context).size.width * 0.33,
                        // child: Text(
                        //   'App_Logo',
                        //   style: TextStyle(
                        //     fontFamily: 'Segoe UI',
                        //     fontSize: 20,
                        //     color: Colors.black,
                        //   ),
                        //   textAlign: TextAlign.left,
                        // ),
                      ),
                    ),
                    // decoration: BoxDecoration(
                    //   borderRadius:
                    //       BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    //   color: Colors.white,
                    //   border: Border.all(
                    //       width: 1.0, color: const Color(0xff707070)),
                    // ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 270,
                      child: ElevatedButton.icon(
                        onPressed: () async {
                          print(url);
                          String deviceType =
                              Platform.isAndroid ? "android" : "ios";
                          print('device type $deviceType');
                          print("_______________________________________"
                              "$studentInfo"
                              "_________________________________________");
                          //for device

                          await getDeviceId();
                          print('deviceId______________________________'
                              '$deviceId'
                              '__________________________________________');
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          setState(() {
                            loading = true;
                          });
                          await provider.logInGoogle();
                          myEmail = provider.googleSignInAccount.email;
                          if (myEmail.endsWith("@esi-sba.dz")) {
                            studentInfo = await getStudentDetails(
                                provider.googleSignInAccount.email,
                                deviceType,
                                deviceId);
                            if (provider.isSignIn) {
                              if (studentInfo == "student not found") {
                                print("_______________________________________"
                                    "$studentInfo"
                                    "_________________________________________");
                                Fluttertoast.showToast(
                                  toastLength: Toast.LENGTH_LONG,
                                  msg:
                                      "This email not found on the Student List ",
                                );
                                provider.logout();
                                setState(() {
                                  loading = false;
                                });
                              } else {
                                print("_________________________________"
                                    "$studentInfo"
                                    "__________________________________");
                                Map<String, dynamic> studentInf =
                                    json.decode(studentInfo);
                                lessonInfo = await getLesson(
                                    studentInf["section_Id"].toString(),
                                    studentInf["group_Id"].toString());
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => HomeScreen(
                                      studentInfo: studentInfo,
                                      photoUrl:
                                          provider.googleSignInAccount.photoUrl,
                                      lessonInfo: lessonInfo,
                                    ),
                                  ),
                                );
                                setState(() {
                                  loading = false;
                                });
                              }
                            }
                          } else {
                            setState(() {
                              loading = false;
                            });
                            Fluttertoast.showToast(
                              toastLength: Toast.LENGTH_LONG,
                              msg: "You need esi sba email",
                            );
                            print("___________"
                                "you can't email"
                                "_________________");
                            provider.logout();
                          }
                        },
                        icon: Image.asset(
                          'images/googleLogo.png',
                          width: 40,
                        ),
                        label: Text(
                          "Sign in with Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        style: ButtonStyle(
                          /* shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),*/
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

Widget buildLoading() => Center(
      child: CircularProgressIndicator(),
    );
