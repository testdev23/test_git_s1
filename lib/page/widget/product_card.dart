import 'package:flutter/material.dart';
import '/page/product_detail.dart';
// import '/data/products_data.dart';

// Card with rows
Widget productCard(BuildContext context, product) {
  return Card(
    clipBehavior: Clip.hardEdge,
    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
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
              flex: 60,
              child: Wrap(
                clipBehavior: Clip.hardEdge,
                children: [
                  Column(
                    children: [
                      Text(
                        product.name,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      // subtitle:
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          product.describe,
                          softWrap: true,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          // trailing:
          const Expanded(
            flex: 15,
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
