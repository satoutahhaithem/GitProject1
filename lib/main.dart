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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
      create: (_) => GoogleSignInProvider(),
      builder: (context, child) => MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInProvider>(context);
    return MaterialApp(
      home: provider.isSignIn ? HomeScreen() : LoginScreen(),
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
