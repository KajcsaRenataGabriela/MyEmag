import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser? user) {
      return CategoriesContainer(builder: (BuildContext context, List<Category> categories) {
        return Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(const LogoutUserStart());
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  icon: const Icon(Icons.power_settings_new_sharp))
            ],
            bottom: categories.isEmpty
                ? null
                : PreferredSize(
                    preferredSize: const Size.fromHeight(56),
                    child: SizedBox(
                      height: 56,
                      child: SelectedCategoryContainer(
                        builder: (BuildContext context, Category selectedCategory) {
                          return ListView(
                            scrollDirection: Axis.horizontal,
                            children: categories.map((Category category) {
                              return Theme(
                                data: ThemeData(canvasColor: Colors.black54),
                                child: ChoiceChip(
                                  backgroundColor: Colors.white.withOpacity(0.8),
                                  labelStyle: const TextStyle(color: Colors.pink, fontWeight: FontWeight.w900),
                                  selectedColor: Colors.white,
                                  label: Text(category.title),
                                  selected: selectedCategory == category,
                                  onSelected: (bool selected) {
                                    if (selected) {
                                      StoreProvider.of<AppState>(context)
                                        ..dispatch(SetCategory(category.id))
                                        ..dispatch(ListProducts.start(category.id));
                                    }
                                  },
                                ),
                              );
                            }).toList(),
                          );
                        },
                      ),
                    ),
                  ),
          ),
          body: VendorsContainer(builder: (BuildContext context, List<Vendor> vendors) {
            return ProductsContainer(
              builder: (BuildContext context, List<Product> products) {
                return ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      final Product product = products[index];
                      final Vendor? vendor = vendors.firstWhereOrNull((Vendor vendor) => vendor.id == product.vendorId);
                      return ListTile(
                        leading: CachedNetworkImage(
                          imageUrl: product.image,
                          fit: BoxFit.cover,
                          width: 56.0,
                          height: 56.0,
                        ),
                        title: Text('${product.title}${vendor == null ? '' : '/ ${vendor.name}'}'),
                        subtitle: Text(product.description),
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(SetProduct(product.id));
                          Navigator.pushNamed(context, '/product');
                        },
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                    itemCount: products.length);
              },
            );
          }),
        );
      });
    });
  }
}
