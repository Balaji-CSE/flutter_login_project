import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logindemo/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:logindemo/user.dart';
import 'package:logindemo/auth_service.dart';
import 'package:logindemo/login_screen.dart';
import 'package:logindemo/register_screen.dart';


class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  Users? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return Users(user.uid, user.email);
  }

  Stream<Users?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<Users?> signInWithEmailAndPassword(
      String email,
      String password,
      ) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(credential.user);
  }

  Future<Users?> createUserWithEmailAndPassword(
      String email,
      String password,
      ) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(credential.user);
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}