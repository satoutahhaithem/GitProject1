import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AuthServices {
  final _auth = FirebaseAuth.instance;
  Future<UserCredential> signInWithCredential(AuthCredential credential) =>
      _auth.signInWithCredential(credential);
  logout() async {
    await FirebaseAuth.instance.signOut();
  }

  get auth => _auth;

  Stream<User> get currentUser => _auth.authStateChanges();
  Future<User> getCurrentUser() async {
    return FirebaseAuth.instance.currentUser;
  }
}
