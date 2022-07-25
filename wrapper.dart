import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:logindemo/user.dart';
import 'package:logindemo/auth_service.dart';
import 'package:logindemo/wrapper.dart';
import 'package:logindemo/login_screen.dart';
import 'package:logindemo/home_screen.dart';
import 'package:logindemo/register_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<Users?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<Users?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final Users? user = snapshot.data;
          return user == null ? LoginScreen() : HomeScreen();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}