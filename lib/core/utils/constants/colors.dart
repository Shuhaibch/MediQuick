import 'package:flutter/material.dart';

class CColors {
  CColors._();

  //* App Basic Color
  // static const Color primaryColor = Color(0xFF563457);
  static const Color primaryColor = Color(0xFF6D4BA5);
  static const Color secondaryColor = Color(0xFFD6D7D7);
  static Color thirneryColor = Color(0xFF383838).withValues(alpha: .67);
  static const Color lightPrimaryColor = Color.fromARGB(255, 241, 167, 244);
  // static const Color primaryColor = Color(0xFF563457);
  static const Color primaryDarkColor = Color(0xFF1a2039);
  // static const Color secondaryColor = Color.fromARGB(255, 115, 129, 178);
  // static const Color thirneryColor = Color(0xFFd9d8da);
  static const Color accentColor = Color(0xFFf6f6f7);
  // static const Color accentColor = Color.fromARGB(255, 244, 234, 216);
  static const Color greenWhiteColor = Color.fromARGB(255, 190, 243, 222);
  static const Color redWhiteColor = Color.fromARGB(255, 255, 188, 188);
  static const Color lightRedColor = Color.fromARGB(255, 244, 79, 79);
  static const Color darkGreenColor = Color(0xFF027715);
  static const Color limeGreenColor = Color(0xFF32cd32);
  static const Color lightPinkColor = Color(0xFFffe4e1);

  //* Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(.707, -.707),
    colors: [Color(0xFFff9a9e), Color(0xFFfad0c4), Color(0xFFfad0c4)],
  );

  //* Text Color
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF6c7570);
  static const Color textWhiteColor = Colors.white;

  //* Background Color
  static const Color lightColor = Color(0xFFF6F6F6);
  static const Color darkColor = Color(0xFF272727);
  static const Color primaryBackgroundColor = Color(0xFFF3f5FF);

  //* Border Color
  static const Color borderPrimaryColor = Color(0xFFD9D9D9);
  static const Color borderSecondaryColor = Color(0xFFE6E6E6);

  //* backgroud Container Color
  static const Color lightContainerColor = Color(0xFFF6F6F6);
  static Color darkContainerColor = Colors.white.withValues(alpha: 0.1);

  //*Button Colors
  static const Color buttonprimaryColor = Color(0xFF4b68ff);
  static const Color buttonSecondaryColor = Color(0xFF6C7570);
  static const Color buttonDesabled = Color(0xFFC4c4c4);

  //*Error Validation Colors
  static const Color errorColor = Color(0xFFD32F2f);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57c00);
  static const Color infoColor = Color(0xFF1976D2);

  //*Nutral Shades
  static const Color blackColor = Color(0xFF232323);
  static const Color darkerGreyColor = Color(0xFF4F4F4F);
  static const Color darkGreyColor = Color(0xFF939393);
  static const Color greyColor = Color(0xFFE0E0E0);
  static const Color softGreyColor = Color(0xFFF4F4F4);
  static const Color lightGreyColor = Color(0xFFF9F9F9);
  static const Color whiteColor = Color(0xFFFFFFFF);

  //* Login Screen
  static const Color loginTextHintColor = Color(0xFFBDBDBD);

  //* Colors
  static const Color skyBlueColor = Color.fromARGB(255, 129, 188, 255);
  static const Color lightSkyBlueColor = Color.fromARGB(255, 212, 240, 249);
  static const Color orangeColor = Color(0xFFffbf00);
  static const Color pinkColor = Color(0xFFda70d6);
  static const Color lightBlueColor = Color(0xFFadd8e6);
}
