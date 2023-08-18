import 'package:flutter/material.dart';
import '/model/product_model.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 25, child: product.image),
            Expanded(flex: 10, child: Text(product.name, textScaleFactor: 4,textAlign: TextAlign.center,)),
            Expanded(flex: 30, child: Text(product.describe)),
          ],
        ),
      ),
    );
  }
}
