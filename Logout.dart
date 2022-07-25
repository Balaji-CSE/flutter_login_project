import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logindemo/NavigationDrawer.dart';
import 'package:logindemo/home_screen.dart';

import 'package:logindemo/Customers.dart';
import 'package:logindemo/Apply Loan.dart';
import 'package:logindemo/CollectionReport.dart';
import 'package:logindemo/Logout.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Out'),
      ),
    );
  }
}

