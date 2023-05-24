import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/index.dart';

class OrdersApi {
  const OrdersApi(this._firestore);

  final FirebaseFirestore _firestore;

  Future<void> submitOrder(String uid, Cart cart, List<Product> products) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('orders').doc();

    final Order$ order = Order$(
      id: ref.id,
      uid: uid,
      cart: cart,
      products: products,
      createdAt: DateTime.now(),
    );

    await ref.set(order.toJson());
  }
}
