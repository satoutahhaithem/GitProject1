import 'package:attendance_app/Screens/Home_Screen.dart';
import 'package:attendance_app/const.dart';
import 'package:flutter/material.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

class LoginScreen extends StatefulWidget {
  static final String id = '/LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 139.0,
              height: 153.0,
              child: Center(
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
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: Colors.white,
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 270,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.id);
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
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
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
