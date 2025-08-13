import 'package:envied/envied.dart' show Envied, EnviedField;

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'GOOGLE_API_KEY', obfuscate: true)
  static final String googleApiKey = _Env.googleApiKey;

  @EnviedField(varName: 'BACKEND_BASE_URL')
  static final String backendBaseUrl = _Env.backendBaseUrl;

  @EnviedField(varName: 'THE_MOVIE_DB_API_KEY', obfuscate: true)
  static final String theMovieDbApiKey = _Env.theMovieDbApiKey;

  @EnviedField(varName: 'TMDB_API_BASE_URL')
  static final String tmdbApiBaseUrl = _Env.tmdbApiBaseUrl;
}
