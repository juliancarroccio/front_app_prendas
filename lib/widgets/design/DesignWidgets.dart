import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesignAssets {
  LinearGradient linearGradientMain(BuildContext context) {
    return LinearGradient(
      begin: Alignment.center,
      end: Alignment.bottomCenter,
      colors: [
        Theme.of(context).primaryColorLight,
        Theme.of(context).primaryColor
      ]);
  }
}
