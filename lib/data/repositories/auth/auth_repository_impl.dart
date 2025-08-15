import 'package:cinebox/core/result/result.dart';

import '../../services/google_sign_in/google_sign_in_service.dart';
import '../../services/local_storage/local_storage_service.dart';
import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LocalStorageService _localStorageService;
  final GoogleSignInService _googleSignInService;

  AuthRepositoryImpl({
    required LocalStorageService localStorageService,
    required GoogleSignInService googleSignInService,
  }) : _localStorageService = localStorageService,
       _googleSignInService = googleSignInService;

  @override
  Future<Result<bool>> isLogged() async {
    // TODO: implement isLogged
    throw UnimplementedError();
  }

  @override
  Future<Result<Unit>> signIn() async {
    final result = await _googleSignInService.signIn();

    switch (result) {
      case Success<String>(:final value):
        await _localStorageService.savedIdToken(value);

        return successOfUnit();
      case Failure<String>(:final error):
        return Failure(error);
    }
  }

  @override
  Future<Result<Unit>> signOut() async {
    final signOutResult = await _googleSignInService.signOut();

    switch (signOutResult) {
      case Success<Unit>():
        final removeResult = await _localStorageService.deleteIdToken();

        switch (removeResult) {
          case Success<Unit>():
            return successOfUnit();
          case Failure<Unit>(:final error):
            return Failure(error);
        }
      case Failure<Unit>(:final error):
        return Failure(error);
    }
  }
}
