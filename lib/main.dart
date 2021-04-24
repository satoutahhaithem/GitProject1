import 'package:attendance_app/Screens/Camera_Screen.dart';
import 'package:flutter/material.dart';

import 'Screens/Home_Screen.dart';
import 'Screens/Login_Screen.dart';
import 'Screens/Student_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        Student_Screen.id: (context) => Student_Screen(),
        HomeScreen.id: (context) => HomeScreen(),
        CameraScreen.id: (context) => CameraScreen(),
      },
    );
  }
}
