import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../models/index.dart';

class AuthEpics implements EpicClass<AppState>{

  AuthEpics(this._api);

  final AuthApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, LoginUserStart>(_loginUserStart).call,
    ])(actions, store);
  }

  Stream<dynamic> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action){
      return Stream<void>.value(null)
          .asyncMap((_) => _api.createUser(email: action.email, password: action.password))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace));
    });
  }

  Stream<void> _loginUserStart(Stream<LoginUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginUserStart action){
      return Stream<void>.value(null)
          .asyncMap((_) => _api.loginUser(email: action.email, password: action.password))
          .takeUntil(actions.whereType<LoginUserCancel>())
          .map((AppUser user) => LoginUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => LoginUser.error(error, stackTrace));
    });
  }
}
