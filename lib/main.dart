import 'package:flutter/material.dart';

import 'Screens/Login_Screen.dart';
import 'Screens/Student_Screen.dart';
import 'iPhoneXXS1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Student_Screen(),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        Student_Screen.id: (context) => Student_Screen(),
      },
    );
  }
}
