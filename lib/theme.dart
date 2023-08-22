import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: const TextTheme(
    displayMedium: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
  ),
  cardTheme: CardTheme(
    color: Colors.blue.shade50,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: Colors.grey,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(15.0),
    ),
  ),
);
