import 'package:flutter/material.dart';
import 'homepage.dart';
import 'loginpage.dart';
import 'signuppage.dart';

void main() => runApp(new MyApp());
 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: <String,WidgetBuilder>{
        '/landingpage': (BuildContext context)=>new MyApp(),
        '/signup': (BuildContext context)=> new SignupPage(),
        '/homepage': (BuildContext context)=> new HomePage()
      },
    );
  }
}

