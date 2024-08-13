import 'package:flutter/material.dart';

class MyColor{
  MyColor._();
  //App UI color
  static const Color primaryColor = Color(0xFF1B7F91);
  static const Color secondaryColor = Color(0xFF1B7F91);
  static const Color accent = Color(0xFF1B7F91);

  //text color
  static const Color textPrimary = Color(0xFF222222);
  static const Color textSecondary = Color(0xFF555555);
  static const Color textWhite = Colors.white;

  //Background color
  static const Color light = Color(0xFF1B7F91);
  static const Color dark = Color(0xFF1B7F91);
  static const Color primaryBackground = Color(0xFF1B7F91);

  //Button color

  static const Color primaryButton = Color(0xFF1B7F91);
  static const Color secondaryButton = Color(0xFF1B7F91);
  static const Color disabledButton = Color(0xFF1B7F91);

  //Background container color

  static const Color lightContainer = Color(0xFFF6F6F6);
  static  Color darkContainer = Colors.white.withOpacity(0.1);

  //Border color

  static const Color primaryBorder = Color(0xFFD9D9D9);
  static const Color secondaryBorder = Color(0xFFE6E6E6);

  //Error & validation color

  static const Color error = Color(0xFFF80000);
  static const Color success = Color(0xFF00A308);
  static const Color warning = Color(0xFFFF9834);
  static const Color info = Color(0xFF3175FF);

  //Neutral shades

  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFFF4F4F4);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);


  //Gradient color

  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.876, 0.876),
      colors: [
        Color(0xffff5e5e),
        Color(0xffff7b6a),
        Color(0xffffadbf),
      ]);

}