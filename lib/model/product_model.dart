import 'package:flutter/material.dart';

class Product {
  String name = '';
  Image image = Image.asset('lib/images/box_empty.jpg');
  String describe = '';
  String shortDescribe = '';

  Product(
    this.name,
    image1,
    this.shortDescribe,
    this.describe,
  ) {
    image = image1 ?? Image.asset('lib/images/box_empty.jpg');
  }
}
