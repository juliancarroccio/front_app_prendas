import 'package:flutter/material.dart';
import 'widgets/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primaryColor: Color(0xffec1c22),
      primaryColorLight: Color(0xffff5e4d),
      primaryColorDark: Color(0xffb10000),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
          headline6: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: MyHomePage(),
    );
  }
}
