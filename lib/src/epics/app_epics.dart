import 'package:redux_epics/redux_epics.dart';

import '../models/index.dart';
import 'auth_epics.dart';

class AppEpics implements EpicClass<AppState> {
  AppEpics(this._auth);

  final AuthEpics _auth;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      _auth.call,
    ])(actions, store);
  }
}
