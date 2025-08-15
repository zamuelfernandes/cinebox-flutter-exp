import 'dart:developer' show log;

import 'package:google_sign_in/google_sign_in.dart';

import '../../../core/result/result.dart';
import 'google_sign_in_service.dart';

class GoogleSignInServiceImpl implements GoogleSignInService {
  @override
  Future<Result<String>> isSignedIn() async {
    try {
      final logged = await GoogleSignIn.instance
          .attemptLightweightAuthentication();

      if (logged case GoogleSignInAccount(
        authentication: GoogleSignInAuthentication(
          idToken: final idToken?,
        ),
      )) {
        return Success(idToken);
      }
      return Failure(Exception('User is not signed in Google'));
    } on Exception catch (e, s) {
      log(
        'User is not signed in Google',
        name: runtimeType.toString(),
        error: e,
        stackTrace: s,
      );

      return Failure(Exception('User is not signed in Google'));
    }
  }

  @override
  Future<Result<String>> signIn() async {
    try {
      final auth = await GoogleSignIn.instance.authenticate(
        scopeHint: ['email', 'profile', 'openid'],
      );

      // Verificando se o idToken não é nulo com destruction
      if (auth.authentication case GoogleSignInAuthentication(
        idToken: final idToken?,
      )) {
        return Success(idToken);
      }

      return Failure(Exception('Failed to retry id token from Google'));
    } on Exception catch (e, s) {
      log(
        'Failed to retry id token from Google',
        name: runtimeType.toString(),
        error: e,
        stackTrace: s,
      );

      return Failure(Exception('Failed to retry id token from Google'));
    }
  }

  @override
  Future<Result<Unit>> signOut() async {
    try {
      await GoogleSignIn.instance.signOut();

      return successOfUnit();
    } on Exception catch (e, s) {
      log(
        'Failed to sign out from Google',
        name: runtimeType.toString(),
        error: e,
        stackTrace: s,
      );

      return Failure(Exception('Failed to sign out from Google'));
    }
  }
}
