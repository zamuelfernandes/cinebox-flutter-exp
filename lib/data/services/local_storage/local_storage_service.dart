import '../../../core/result/result.dart';

abstract interface class LocalStorageService {
  Future<Result<Unit>> savedIdToken(String token);
  Future<Result<String>> getIdToken();
  Future<Result<Unit>> deleteIdToken();
}
