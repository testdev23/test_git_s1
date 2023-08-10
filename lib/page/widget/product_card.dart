import 'package:flutter/material.dart';
// import '/data/products_data.dart';

Widget productCard(product) {
  return Card(
    child: ListTile(
      leading: product.image,
      title: Text(product.name),
      subtitle: Text(product.describe),
      trailing: const Icon(Icons.more_vert),
      isThreeLine: true,
    ),
  );
}
