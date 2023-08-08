import 'package:flutter/material.dart';

class Product {
  String name = '';
  Image? image;
  String describe = '';
  String shortDescribe = '';

  Product(
    this.name,
    this.image,
    this.shortDescribe,
    this.describe,
  ) {
    image = image ?? Image.asset('lib/images/box.jpg');
  }
}
