import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Dashboard'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                Text('You are now logged in'),
                 SizedBox(
                    height: 15.0,
                    ),
                     OutlineButton(
                   borderSide: BorderSide(
                      color: Colors.red, style: BorderStyle.solid, width: 3.0), 
                       child: Text('LogOut'),
                       onPressed: () {
                          FirebaseAuth.instance.signOut().then((value) {
                             Navigator
                             .of(context)
                             .pushReplacementNamed('/landingpage');
                          }).catchError((e){
                             print((e));
                          });
                       },    
                  )
             ],
          )
        )
      ),
      
    );
  }
}