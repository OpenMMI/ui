import 'package:flutter/material.dart';

AppBarTheme appBarTheme = const AppBarTheme(
  backgroundColor: Colors.transparent,
  foregroundColor: Colors.white,
  centerTitle: false,
  elevation: 0,
);

TextTheme textTheme = const TextTheme(
  headline1: TextStyle(color: Colors.white),
  headline2: TextStyle(color: Colors.white),
  headline3: TextStyle(color: Colors.white),
  headline4: TextStyle(color: Colors.white),
  bodyText1: TextStyle(color: Colors.grey),
  bodyText2: TextStyle(color: Colors.grey),
  subtitle1: TextStyle(color: Colors.white),
  subtitle2: TextStyle(color: Colors.white),
);

ThemeData appTheme = ThemeData(
  primarySwatch: Colors.grey,
  textTheme: textTheme,
  backgroundColor: Colors.black,
  dialogBackgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: appBarTheme,
);
