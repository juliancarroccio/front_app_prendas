import 'package:flutter/material.dart';

class AssetsImages {
  static final String path = "assets/images/";
  static Image ImageLogo() {
    return Image.asset("${path}icono.png");
  }
  static Image ImageLogoSplash() {
    return Image.asset("${path}icono_splash.png");
  }
}
