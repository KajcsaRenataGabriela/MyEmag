part of '../index.dart';

@freezed
class CreateUser with _$CreateUser {
  const factory CreateUser.start({required String email, required String password}) = CreateUserStart;

  @Implements<UserAction>()
  const factory CreateUser.successful(AppUser user) = CreateUserSuccessful;

  const factory CreateUser.error(Object error, StackTrace stacktrace) = CreateUserError;
}
