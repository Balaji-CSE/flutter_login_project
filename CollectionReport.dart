import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logindemo/NavigationDrawer.dart';
import 'package:logindemo/home_screen.dart';

import 'package:logindemo/Customers.dart';
import 'package:logindemo/Apply Loan.dart';
import 'package:logindemo/CollectionReport.dart';
import 'package:logindemo/Logout.dart';

class CollectionReport extends StatefulWidget {
  const CollectionReport({Key? key}) : super(key: key);

  @override
  State<CollectionReport> createState() => _CollectionReportState();
}

class _CollectionReportState extends State<CollectionReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collection Reports'),
      ),
    );
  }
}

