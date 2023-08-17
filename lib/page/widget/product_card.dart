import 'package:flutter/material.dart';
// import '/data/products_data.dart';

// Card with rows
Widget productCard(product) {
  return Card(
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
                      width:double.infinity,
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
