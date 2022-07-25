import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logindemo/NavigationDrawer.dart';
import 'package:logindemo/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:logindemo/user.dart';
import 'package:logindemo/auth_service.dart';
import 'package:logindemo/login_screen.dart';
import 'package:logindemo/register_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),

      ),
      drawer: NavigationDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('You\'re in the Home Screen'),
          Center(
            child: ElevatedButton(
              child: Text('Logout'),
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginScreen()));
                await authService.signOut();
              },
            ),
          ),
        ],
      ),

    );
  }
}
/*import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:finance_app/NavigationDrawer.dart';
import 'package:finance_app/Home.dart';
import 'package:finance_app/Customers.dart';
import 'package:finance_app/Apply Loan.dart';
import 'package:finance_app/Collection Report.dart';
import 'package:finance_app/Logout.dart';*/


