import 'package:cinebox/data/services/services_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth/auth_repository.dart';
import 'auth/auth_repository_impl.dart';

part 'repositories_providers.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    localStorageService: ref.read(localStorageServiceProvider),
    googleSignInService: ref.read(googleSignInServiceProvider),
  );
}
