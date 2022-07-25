import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logindemo/NavigationDrawer.dart';
import 'package:logindemo/home_screen.dart';

import 'package:logindemo/Customers.dart';
import 'package:logindemo/Apply Loan.dart';
import 'package:logindemo/CollectionReport.dart';
import 'package:logindemo/Logout.dart';


class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  State<Customers> createState() => _Customers();
}

class _Customers extends State<Customers> {
  int counter=0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor:Colors.deepPurple,




      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 50,horizontal:20),
              child: Row(
                children: [
                  Text('CUSTOMERS',
                    style: TextStyle(
                      //fontSize: 25.0,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 190.0),
                  Icon(Icons.notifications_active),
                  SizedBox(width: 10.0),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.rVggrpUvs-YAUExsD7c-EAHaHa&pid=Api&P=0'),
                  ),
                ],
              ),
            ),
            //SizedBox(height:5),
            Column(
              children: [
                Text('ADD CUSTOMERS',
                  style:TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

              ],
            ) ,





            Stack(
              children:<Widget>[
                new Container(


                  width: double.infinity ,
                  padding: EdgeInsets.symmetric(vertical:30,horizontal:20  ),
                  margin: EdgeInsets.symmetric(vertical: 60,horizontal:0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Colors.white,

                    boxShadow: [
                      BoxShadow(
                          color:Theme.of(context).hintColor.withOpacity(0.2),
                          offset: Offset(0,10),
                          blurRadius:20),
                    ],
                  ),
                  child:Column(
                    children: <Widget>[

                      SizedBox(height:10.0),
                      // Text('AMOUNT'),
                      TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Name",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context)
                              .accentColor
                              .withOpacity(0.2),
                          ),
                          ),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context)
                              .accentColor
                              .withOpacity(0.2),
                          ),
                          ),

                        ),
                      ),
                      SizedBox(height:10),
                      //Text('WEEKLY PAYMENT'),
                      TextField(
                        keyboardType:TextInputType.number ,
                        decoration: new InputDecoration(
                          hintText: "Phone Number ",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context)
                              .accentColor
                              .withOpacity(0.2),
                          ),
                          ),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context)
                              .accentColor
                              .withOpacity(0.2),
                          ),
                          ),

                        ),
                      ),
                      SizedBox(height:10),
                      //Text('RATE OF INTEREST'),
                      TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Address",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context)
                              .accentColor
                              .withOpacity(0.2),
                          ),
                          ),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context)
                              .accentColor
                              .withOpacity(0.2),
                          ),
                          ),

                        ),
                      ),
                      SizedBox(height:30),
                      //Text('PERIOD'),
                      Center(
                        child: FlatButton.icon(
                          padding: EdgeInsets.symmetric(vertical:15,horizontal: 100),
                          shape: Border(),
                          onPressed: (){},
                          icon: Icon(
                            Icons.attach_file,
                          ),
                          label: Text('Attach Document'),
                          color: Colors.deepPurpleAccent[100],
                        ),


                      ),


                      SizedBox(height:40.0),
                      FlatButton(
                        padding: EdgeInsets.symmetric(vertical:15,horizontal: 115),
                        onPressed: () {},
                        color: Colors.deepPurple,
                        shape: Border(),
                        child: const Text('Add customer',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,


                          ),

                        ),
                      ),
                    ],
                  ),


                ),
              ],
            ),


          ],


        ),
      ),

    );
  }

}


