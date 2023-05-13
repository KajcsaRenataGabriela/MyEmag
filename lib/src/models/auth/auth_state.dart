part of '../index.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    AppUser? user,
  }) = AuthState$;

  factory AuthState.fromJson(Map<dynamic, dynamic> json) => _$AuthStateFromJson(Map<String, dynamic>.from(json));
}
