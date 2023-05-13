import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/index.dart';
part 'auth/create_user.dart';
part 'auth/login_user.dart';
part 'auth/check_user.dart';
part 'auth/logout_user.dart';
part 'index.freezed.dart';

abstract class UserAction {
  AppUser? get user;
}

abstract class PendingAction {
  String get pendingId;
}

abstract class StartAction implements PendingAction {}

abstract class StopAction implements PendingAction {}

typedef ActionResult = void Function(dynamic action);
