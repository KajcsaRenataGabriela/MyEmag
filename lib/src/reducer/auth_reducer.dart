import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, CreateUserSuccessful>(_createUserSuccessful).call,
  TypedReducer<AuthState, LoginUserSuccessful>(_loginUserSuccessful).call,
  TypedReducer<AuthState, UserAction>(_userAction).call,
]);

AuthState _createUserSuccessful(AuthState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AuthState _loginUserSuccessful(AuthState state, LoginUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AuthState _userAction(AuthState state, UserAction action) {
  return state.copyWith(user: action.user);
}
