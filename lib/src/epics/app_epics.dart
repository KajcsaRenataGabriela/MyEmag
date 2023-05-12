import 'package:redux_epics/redux_epics.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'auth_epics.dart';

class AppEpics implements EpicClass<AppState> {
  AppEpics(this._auth);

  final AuthEpics _auth;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
    ])(actions, store);
  }

  Stream<dynamic> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return combineEpics<AppState>(<Epic<AppState>>[_auth.call])(actions, store);
  }
}
