import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:attendance_app/Screens/Home_Screen.dart';

import 'Camera_Screen.dart';

class DeclinedScreen extends StatelessWidget {
  final String studentInfo;
  static final String id = '/DeclinedScreen';

  const DeclinedScreen({this.studentInfo});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlueColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Icon(
              Icons.cancel,
              size: size.height / 3,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.height / 6,
            height: size.height / 15,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text(
                'REPEAT',
                style: TextStyle(
                  color: kBlueColor,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
