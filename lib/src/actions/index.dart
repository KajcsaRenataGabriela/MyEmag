import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/index.dart';
part 'auth/create_user.dart';
part 'auth/login_user.dart';
part 'auth/check_user.dart';
part 'index.freezed.dart';

abstract class UserAction {
  AppUser get user;
}
