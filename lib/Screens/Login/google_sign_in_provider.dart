import 'package:attendance_app/Screens/Login/auth_services.dart';
import 'package:attendance_app/Screens/Login/sign_in_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:attendance_app/service/send_data_to_the_internet.dart';

class GoogleSignInProvider extends ChangeNotifier {
  bool _isSignIn;
  String _studentInfo;

  String get studentInfo => _studentInfo;

  set setStudentInfo(String value) {
    _studentInfo = value;
  }

  GoogleSignInProvider() {
    _isSignIn = false;
  }

  bool get isSignIn {
    return _isSignIn;
    notifyListeners();
  }

  set isSignIn(bool value) {
    _isSignIn = value;
    notifyListeners();
  }

  GoogleSignInAccount googleSignInAccount;

  final authService = AuthServices();
  final googleSignIn = GoogleSignIn(scopes: ['email']);
  Stream<User> get currentUser => authService.currentUser;

  logInGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await googleSignIn.signIn();
      data.studentId = googleUser.id;
      print('___________________________________'
          '${data.studentId}__________________'
          '_________________________________');
      if (googleUser == null) {
        isSignIn = false;
      } else {
        googleSignInAccount = googleUser;
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );

        //firebase sign in

        final result = await authService.signInWithCredential(credential);
        print('___________________'
            '${result.user.email}'
            '______________________');
        isSignIn = true;
      }
    } catch (e) {
      print('___________________ereur'
          '$e'
          '_____________________ereur');
    }
  }

  logout() {
    authService.logout();
    googleSignIn.disconnect();
    isSignIn = false;
    notifyListeners();
  }
}
