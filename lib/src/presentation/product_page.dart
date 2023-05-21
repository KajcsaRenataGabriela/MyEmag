import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  void showAlertBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(title: const Text('You added this item to your shopping list.'), actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok. Continue shopping.')),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: const Text('Go to shopping cart.')),
        ]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SelectedProductContainer(builder: (BuildContext context, Product product) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(product.title)),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                CachedNetworkImage(imageUrl: product.image),
                const SizedBox(height: 16),
                Text(product.description),
                const SizedBox(height: 16),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    '${product.price} RON',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.add_shopping_cart_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(UpdateCart(product.id, add: true));
              showAlertBox(context);
            }),
      );
    });
  }
}
