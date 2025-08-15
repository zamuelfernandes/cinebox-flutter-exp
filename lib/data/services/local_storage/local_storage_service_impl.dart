import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/result/result.dart';
import './local_storage_service.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  final FlutterSecureStorage _secureStorage;

  LocalStorageServiceImpl({required FlutterSecureStorage secureStorage})
    : _secureStorage = secureStorage;

  @override
  Future<Result<Unit>> deleteIdToken() async {
    _secureStorage.delete(key: 'id_token');
    return successOfUnit();
  }

  @override
  Future<Result<String>> getIdToken() async {
    final token = await _secureStorage.read(key: 'id_token');

    if (token != null) {
      return Success(token);
    }

    return Failure(Exception('Token not found'));
  }

  @override
  Future<Result<Unit>> savedIdToken(String token) async {
    _secureStorage.write(key: 'id_token', value: token);
    return successOfUnit();
  }
}
