import 'package:attendance_app/Screens/Login/auth_services.dart';
import 'package:attendance_app/Screens/Login/sign_in_logic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class GoogleSignInProvider extends ChangeNotifier {
  bool _isSignIn;
  GoogleSignInProvider() {
    _isSignIn = false;
  }

  bool get isSignIn => _isSignIn;

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

/*
FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final authService=AuthService();
final googleSignIn = GoogleSignIn(scopes: ['email']);
bool _isSigninIn;

GoogleSignInProvider() {
  _isSigninIn = false;
}

bool get isSigninIn => _isSigninIn;

set isSigninIn(bool value) {
  _isSigninIn = value;
  notifyListeners();
}

// ignore: missing_return
login() async {
  try {
    isSigninIn = true;
    final user = await googleSignIn.signIn();
    if (user == null) {
      print('____________________________________'
          'aaa'
          '_______________________________________');
      isSigninIn = false;
    } else {
      print('______________________________________'
          'bbb'
          '________________________________________');
      final googleAuth = await user.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final result =
      await FirebaseAuth.instance.signInWithCredential(credential);
      print('______________________________________'
          '${result.user.email}'
          '________________________________________');
      isSigninIn = false;
    }
  } catch (e) {
    print('_____________________erreur'
        '$e'
        '_______________________erreur');
  }
}

// ignore: non_constant_identifier_names
void Logout() async {
  await googleSignIn.disconnect();
  FirebaseAuth.instance.signOut();
}*/
