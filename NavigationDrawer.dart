import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logindemo/NavigationDrawer.dart';
import 'package:logindemo/home_screen.dart';

import 'package:logindemo/Customers.dart';
import 'package:logindemo/Apply Loan.dart';
import 'package:logindemo/CollectionReport.dart';
import 'package:logindemo/Logout.dart';
import 'package:logindemo/login_screen.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: UserAccountsDrawerHeader(
              accountName: Text('BALAJI'),
              accountEmail: Text('balaji@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://cdn4.vectorstock.com/i/1000x1000/47/93/person-icon-iconic-design-vector-18314793.jpg'),
              ),
            ),
          ),

          ListTile(
            title: Text('Home'),
            leading: IconButton(
              icon: Icon(Icons.people),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder : (BuildContext context) =>HomeScreen()
              ));},


          ),
          SizedBox(height: 20.0),
          ListTile(
            title: Text('Customers'),
            leading: IconButton(
              icon: Icon(Icons.people),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder : (BuildContext context) =>Customers()
              ));},


          ),

          SizedBox(height: 20.0),
          ListTile(
            title: Text('Apply Loan'),
            leading: IconButton(
              icon: Icon(Icons.monetization_on_rounded),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder : (BuildContext context) =>ApplyLoan()
              ));},


          ),

          SizedBox(height: 20.0),
          ListTile(
            title: Text('Collection Report'),
            leading: IconButton(
              icon: Icon(Icons.report),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder : (BuildContext context) =>CollectionReport()
              ));},


          ),

          SizedBox(height: 90.0),
          ListTile(
            title: Text('Logout'),
            leading: IconButton(
              icon: Icon(Icons.logout),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder : (BuildContext context) =>LoginScreen()
              ));},


          )


        ],
      ),

    );
  }
}
