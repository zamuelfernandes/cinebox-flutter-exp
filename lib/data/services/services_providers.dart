import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'google_sign_in/google_sign_in_service.dart';
import 'google_sign_in/google_sign_in_service_impl.dart';
import 'local_storage/local_storage_service.dart';
import 'local_storage/local_storage_service_impl.dart';

part 'services_providers.g.dart';

@riverpod
GoogleSignInService googleSignInService(Ref ref) {
  return GoogleSignInServiceImpl();
}

@Riverpod(keepAlive: true)
LocalStorageService localStorageService(Ref ref) {
  return LocalStorageServiceImpl(secureStorage: FlutterSecureStorage());
}
