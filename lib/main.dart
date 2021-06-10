import 'dart:io' show Platform;

import 'package:attendance_app/Screens/Camera_Screen.dart';
import 'package:attendance_app/Screens/Login/google_sign_in_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Home_Screen.dart';
import 'Screens/Loading_Screen.dart';
import 'Screens/Login_Screen.dart';
import 'Screens/Student_Screen.dart';
import 'package:attendance_app/Screens/Accepted_Screen.dart';
import 'package:attendance_app/Screens/Declined_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'service/send_data_to_the_internet.dart';
import 'Screens/Login/auth_services.dart';

void main() async {
  String deviceType = "";
  String deviceId =
      Platform.isAndroid ? deviceType = "Android" : deviceType = "ios";
  data.deviceType = deviceType;
  print(data.deviceType);
  print(data.qrCodeString);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
      create: (_) => GoogleSignInProvider(),
      builder: (context, child) => MyApp()));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    AuthServices authServices = AuthServices();
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        Student_Screen.id: (context) => Student_Screen(),
        HomeScreen.id: (context) => HomeScreen(),
        CameraScreen.id: (context) => CameraScreen(),
        AcceptedScreen.id: (context) => AcceptedScreen(),
        DeclinedScreen.id: (context) => DeclinedScreen(),
      },
    );
  }
}
