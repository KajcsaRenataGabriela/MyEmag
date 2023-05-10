import 'package:firebase_auth/firebase_auth.dart';

import '../models/index.dart';

class AuthApi {
  AuthApi(this._auth);

  final FirebaseAuth _auth;

  Future<AppUser> createUser({required String email, required String password}) async {
    final UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final User user = credential.user!;

    return AppUser(
      uid: user.uid,
      email: email,
      displayName: user.displayName ?? email.split('@').first,
    );
  }
}
