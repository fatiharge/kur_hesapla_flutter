import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env/production.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'KUR_HESAPLA_API_KEY')
  static final String kurHesaplaApiKey = _Env.kurHesaplaApiKey;

  @EnviedField(varName: 'KUR_HESAPLA_API_CLIENT')
  static final String kurHesaplaApiClient = _Env.kurHesaplaApiClient;

  @EnviedField(varName: 'KUR_HESAPLA_USER_AGENT')
  static final String kurHesaplaUserAgent = _Env.kurHesaplaUserAgent;

  @EnviedField(varName: 'NEWS_API_KEY')
  static final String newsApiKey = _Env.newsApiKey;

  @EnviedField(varName: 'NEWS_API_CLIENT')
  static final String newsApiClient = _Env.newsApiClient;

  @EnviedField(varName: 'NEWS_USER_AGENT')
  static final String newsUserAgent = _Env.newsUserAgent;

  @EnviedField(varName: 'MAIL')
  static final String mail = _Env.mail;
}
