import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff033e8c),
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(128.0, 194.0),
            child: Container(
              width: 139.0,
              height: 153.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: Colors.white,
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(153.0, 254.0),
            child: Text(
              'App_Logo',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(24, 483.0),
            child: 
            ),
          )
        ],
      ),
    );
  }
}
