import 'package:flutter/material.dart';
import 'package:meca/views/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'CenturyGothic',
          primaryColor: Colors.blue[800],
          canvasColor: Colors.blue[50],
          primaryIconTheme: IconThemeData(
            color: Colors.blue
          ),
          primaryColorDark: Colors.blueGrey[400],
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
            subtitle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300),
            body1: TextStyle(fontFamily: 'CenturyGothic', fontWeight: FontWeight.normal, color: Colors.black),
              button: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Colors.black)
          ),
          textTheme: TextTheme(
              title: TextStyle(fontFamily: 'CenturyGothicBold', fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
              subhead: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
              button: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))),
      home: LoginView(),
    );
  }
}
