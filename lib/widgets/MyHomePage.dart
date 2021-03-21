import 'package:app_prenda_scanner/mainScreens/homeScreen.dart';
import 'package:app_prenda_scanner/utils/AssetsImages.dart';
import 'package:app_prenda_scanner/utils/ConstantsApp.dart';
import 'package:app_prenda_scanner/utils/TextApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreen/splashscreen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: ConstantsApp.TIME_SPLASH_SCREEN,
      navigateAfterSeconds: HomeScreen(),
      image: AssetsImages.ImageLogoSplash(),
      loaderColor: Theme.of(context).primaryColor,
      loadingText: Text(TextApp.LOADING),
      backgroundColor: Color(0xffec1c22),
    );
  }
}
