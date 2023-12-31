import 'package:flutter/material.dart';
import 'package:test_git_s1/theme.dart';
import 'data/products_data.dart';
import '/page/widget/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('List of products'),
      ),
      body: productsList(products),
    );
  }
}

Widget productsList(products) {
  return Center(
    child: ListView.builder(
        itemCount: products.length,
        prototypeItem: const ListTile(
          title: Text('List of Products'),
        ),
        itemBuilder: (context, index) {
          return Center(child: productCard(context, products[index]));
        }),
  );
}
