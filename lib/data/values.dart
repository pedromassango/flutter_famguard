import 'package:flutter/material.dart';


String appName = "Famguard";

Color colorGradientTop = Color(0xFF6137D7);
Color colorGradientBottom = Color(0xFFBC3358);

Gradient appGradient =
    LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter,
    colors: [colorGradientTop, colorGradientBottom,], stops: [0,0.7]);