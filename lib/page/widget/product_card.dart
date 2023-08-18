import 'package:flutter/material.dart';
import '/page/product_detail.dart';
// import '/data/products_data.dart';

// Card with rows
Widget productCard(BuildContext context, product) {
  return Card(
    clipBehavior: Clip.hardEdge,
    child: InkWell(
      splashColor: Colors.blue.withAlpha(30),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetail(product: product);
        }));
      },
      child: Row(
        children: [
          //leading
          Expanded(flex: 25, child: product.image),
          Expanded(
              flex: 70,
              child: Wrap(
                clipBehavior: Clip.hardEdge,
                children: [
                  Column(
                    children: [
                      Text(
                        product.name,
                        textAlign: TextAlign.center,
                      ),
                      // subtitle:
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          product.describe,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          // trailing:
          const Expanded(
            flex: 5,
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
    ),
  );
}

// simple List tile
Widget productCardListTile(product) {
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
