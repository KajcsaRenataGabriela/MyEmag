import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CartContainer(builder: (BuildContext context, Cart cart) {
      return ProductsContainer(builder: (BuildContext context, Map<String, Product> products) {
        final double total = cart.items.fold(0.0, (double sum, CartItem item) {
          final Product product = products[item.productId]!;
          return sum + product.price * item.quantity;
        });
        final int totalNumberOfItems = cart.items.fold(0, (int sum, CartItem item) {
          return sum + item.quantity;
        });
        return Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(cart.items.isNotEmpty
                    ? cart.items.length == 1
                        ? '${cart.items.length} product'
                        : '$totalNumberOfItems products'
                    : 'No products')),
          ),
          body: SafeArea(
            child: cart.items.isEmpty
                ? const Center(
                    child: Text('No items added :('),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: ListView.separated(
                            itemCount: cart.items.length,
                            itemBuilder: (BuildContext context, int index) {
                              final CartItem item = cart.items[index];
                              final Product product = products[item.productId]!;
                              return Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: CachedNetworkImage(
                                      imageUrl: product.image,
                                      fit: BoxFit.cover,
                                      height: 56,
                                      width: 56,
                                    ),
                                    title: Text(product.title),
                                    trailing: Text('${product.price * item.quantity} RON'),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(UpdateCart(product.id, add: false));
                                        },
                                        icon: const Icon(Icons.remove_circle_outline),
                                        color: Colors.pinkAccent,
                                      ),
                                      Text('${item.quantity}'),
                                      IconButton(
                                        onPressed: () {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(UpdateCart(product.id, add: true));
                                        },
                                        icon: const Icon(Icons.add_circle_outline),
                                        color: Colors.pinkAccent,
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return const Divider();
                            },
                          ),
                        ),
                        ListTile(
                          title: Text(
                            '$total RON',
                            style: const TextStyle(fontSize: 26),
                          ),
                          trailing: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Order ',
                              style: TextStyle(fontSize: 26),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        );
      });
    });
  }
}
