part of '../index.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    required String displayName,
    String? profileUrl,
  }) = AppUser$;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => _$AppUserFromJson(Map<String, dynamic>.from(json));
}
