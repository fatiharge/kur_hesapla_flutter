import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';

class KurHesaplaApi {
  KurHesaplaApi() {
    const apiKey = String.fromEnvironment('KUR_HESAPLA_API_KEY');
    const apiClientURL = String.fromEnvironment('KUR_HESAPLA_API_CLIENT');
    const userAgent = String.fromEnvironment('KUR_HESAPLA_USER_AGENT');

    _apiClient = Openapi(
      dio: Dio(
        BaseOptions(
          connectTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 3000),
          contentType: 'application/json',
          headers: {
            'X-API-KEY': apiKey,
            'User-Agent': userAgent,
          },
        ),
      ),
      basePathOverride: apiClientURL,
    );
  }

  late final Openapi _apiClient;

  Openapi get apiClient => _apiClient;
}
