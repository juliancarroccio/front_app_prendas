import 'package:app_prenda_scanner/mainScreens/escanear/Scan.dart';
import 'package:app_prenda_scanner/mainScreens/ingresoManual/IngresoManual.dart';
import 'package:app_prenda_scanner/utils/AssetsImages.dart';
import 'package:app_prenda_scanner/utils/ConstantsApp.dart';
import 'package:app_prenda_scanner/utils/TextApp.dart';
import 'package:app_prenda_scanner/widgets/design/DesignWidgets.dart';
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
      navigateAfterSeconds: MyBottonNavigationBar(),
      image: AssetsImages.ImageLogoSplash(),
      loaderColor: Colors.white,
      loadingText: Text(TextApp.LOADING, style: TextStyle(color: Colors.white)),
      gradientBackground: DesignAssets().linearGradientMain(context),
    );
  }
}

class MyBottonNavigationBar extends StatefulWidget {
  @override
  _MyBottonNavigationBarState createState() => _MyBottonNavigationBarState();
}

class _MyBottonNavigationBarState extends State<MyBottonNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    IngresoManual(),
    Scan(),
  ];

  void _selectedOptionInMyBottonNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard),
              title: Text(TextApp.BUTTON_NAVIGATION_OPTION_1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              title: Text(TextApp.BUTTON_NAVIGATION_OPTION_2)),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColorLight,
        onTap: _selectedOptionInMyBottonNavigation,
      ),
    );
  }
}
