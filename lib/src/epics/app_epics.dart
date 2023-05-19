import 'package:redux_epics/redux_epics.dart';

import '../models/index.dart';
import 'auth_epics.dart';
import 'products_epics.dart';

class AppEpics implements EpicClass<AppState> {
  AppEpics(this._auth, this._products);

  final AuthEpics _auth;
  final ProductsEpics _products;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[_auth.call, _products.call])(actions, store);
  }
}
