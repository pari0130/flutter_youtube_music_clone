import 'package:flutter/material.dart';

class Palette {
  static const Color background = Color(0xFF000000);
  static const Color bottomNavBar = Color(0xFF303030);
  static const Color scaffold = Color(0xFFF0F2F5);

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}