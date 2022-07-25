import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logindemo/NavigationDrawer.dart';
import 'package:logindemo/home_screen.dart';

import 'package:logindemo/Customers.dart';
import 'package:logindemo/Apply Loan.dart';
import 'package:logindemo/CollectionReport.dart';
import 'package:logindemo/Logout.dart';

class ApplyLoan extends StatefulWidget {
  const ApplyLoan({Key? key}) : super(key: key);

  @override
  State<ApplyLoan> createState() => _ApplyLoan();
}

class _ApplyLoan extends State<ApplyLoan> {
  int counter=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:Colors.deepPurple,

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Row(
        children: [
          SizedBox(width:15 ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter += 500;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[500],
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          SizedBox(width: 240.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter -= 500;
              });
            },
            child: Text('-',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            backgroundColor: Colors.grey[500],
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          ) ,
        ],
      ) ,

      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 50,horizontal:20),
              child: Row(
                children: [
                  Text('Apply for loan',
                    style: TextStyle(
                      //fontSize: 25.0,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 150.0),
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
                Text('TOTAL LOAN AMOUNT',
                  style:TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Maximum Amount ₹1,00,000',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text('$counter',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold)),
              ],
            ) ,





            Stack(
              children:<Widget>[
                new Container(


                  width: double.infinity ,
                  padding: EdgeInsets.symmetric(vertical:30,horizontal:20  ),
                  margin: EdgeInsets.symmetric(vertical: 30,horizontal:0),
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
                      SizedBox(height: 1),
                      Text('Frequency',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),


                      Row(
                        children: [
                          RaisedButton(onPressed: (){},child: Text("DAILY"),),
                          SizedBox(width: 25),
                          RaisedButton(onPressed: (){},child: Text("WEEKLY"),color: Colors.deepOrangeAccent,),
                          SizedBox(width: 25),
                          RaisedButton(onPressed: (){},child: Text("MONTHLY"),),
                        ],
                      ),
                      SizedBox(height:10.0),
                      // Text('AMOUNT'),
                      TextFormField(
                        decoration: new InputDecoration(
                          hintText: "AMOUNT",
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
                        decoration: new InputDecoration(
                          hintText: "WEEKLY PAYMENT ",
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
                          hintText: "RATE OF INTEREST",
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
                      SizedBox(width:10),
                      //Text('PERIOD'),
                      TextField(

                        decoration: new InputDecoration(
                          hintText: "PERIOD ",
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

                      SizedBox(height:30.0),
                      FlatButton(
                        padding: EdgeInsets.symmetric(vertical:15,horizontal: 50),
                        onPressed: () {},
                        color: Colors.deepPurple,
                        child: const Text('Apply Now',
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
