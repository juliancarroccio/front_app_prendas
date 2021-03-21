import 'package:flutter/material.dart';
import 'mainWidgets/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primaryColor: Color(0xff9ccc65),
      primaryColorLight: Color(0xffcfff95),
      primaryColorDark: Color(0xff6b9b37),
      accentColor: Color(0xffc5e1a5),
      textTheme: TextTheme(
          headline6: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: MyHomePage(title: 'Demo Home Page'),
    );
  }
}
