import 'package:flutter/material.dart';

class AppColours {
  static BoxDecoration buildGradientBoxDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.white]));
  }
}
