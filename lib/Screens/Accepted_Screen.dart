import 'package:attendance_app/Screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';

class AcceptedScreen extends StatelessWidget {
  static final String id = '/AcceptedScreen';
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
              Icons.check_circle_outline,
              size: size.height / 3,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.height / 6,
            height: size.height / 14,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text(
                'DONE',
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
