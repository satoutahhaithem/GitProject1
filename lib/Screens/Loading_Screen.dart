import 'package:attendance_app/Screens/Accepted_Screen.dart';
import 'package:attendance_app/Screens/Declined_Screen.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:loading_animations/loading_animations.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

bool isLoading = true; // variable to check state
bool isCorrect = true; //Verify the qr_code

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBlueColor,
        ),
        backgroundColor: kBlueColor,
        body: isLoading
            ? Center(
                child: SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  strokeWidth: 7,
                ),
              ))
            : isCorrect
                ? Navigator.pushNamed(context, AcceptedScreen.id)
                : Navigator.pushNamed(context, DeclinedScreen.id));
  }
}
