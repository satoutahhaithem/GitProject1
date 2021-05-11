import 'package:attendance_app/Screens/Home_Screen.dart';
import 'package:attendance_app/Screens/Login/google_sign_in_provider.dart';
import 'package:attendance_app/Screens/Login_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GoogleSignIn1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      builder: (context, _) => LoginScreen(),
    );
  }
}

/*StreamBuilder(
stream: FirebaseAuth.instance.authStateChanges(),
builder: (context, snapshot) {
final provider = Provider.of<GoogleSignInProvider>(context);
if (provider.isSigninIn) {
return buildLoading();
} else if (snapshot.hasData) {
return HomeScreen();
} else {
return HomeScreen();
}
}),*/

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
