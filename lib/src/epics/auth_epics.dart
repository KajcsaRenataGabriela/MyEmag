import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../models/index.dart';

class AuthEpics implements EpicClass<AppState> {
  AuthEpics(this._api);

  final AuthApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, LoginUserStart>(_loginUserStart).call,
      TypedEpic<AppState, CheckUserStart>(_checkUserStart).call,
      TypedEpic<AppState, LogoutUserStart>(_logoutUserStart).call,
    ])(actions, store);
  }

  Stream<dynamic> _createUserStart(
      Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) =>
              _api.createUser(email: action.email, password: action.password))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              CreateUser.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<void> _loginUserStart(
      Stream<LoginUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) =>
              _api.loginUser(email: action.email, password: action.password))
          .map((AppUser user) => LoginUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              LoginUser.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<void> _checkUserStart(
      Stream<CheckUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CheckUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.checkUser())
          .map((AppUser? user) => CheckUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              CheckUser.error(error, stackTrace));
    });
  }

  Stream<void> _logoutUserStart(
      Stream<LogoutUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.logOut())
          .mapTo(const LogoutUser.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              LogoutUser.error(error, stackTrace));
    });
  }
}
