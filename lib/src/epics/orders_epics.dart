import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/index.dart';
import '../data/orders_api.dart';
import '../models/index.dart';

class OrdersEpics implements EpicClass<AppState> {
  OrdersEpics(this._api);

  final OrdersApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, SubmitOrderStart>(_submitOrderStart).call,
    ])(actions, store);
  }

  Stream<dynamic> _submitOrderStart(Stream<SubmitOrderStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SubmitOrderStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            final Cart cart = store.state.auth.cart;
            final List<Product> products =
                cart.items.map((CartItem item) => store.state.products.products[item.productId]!).toList();

            return _api.submitOrder(store.state.auth.user!.uid, cart, products);
          })
          .mapTo(const SubmitOrder.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SubmitOrderError(error, stackTrace));
    });
  }
}
