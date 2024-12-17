import 'package:dio/dio.dart';
import 'package:kur_hesapla/product/manager/env.dart';
import 'package:openapi/openapi.dart';

class KurHesaplaClient {
  KurHesaplaClient() {
    _apiClient = Openapi(
      dio: Dio(
        BaseOptions(
          connectTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 3000),
          contentType: 'application/json',
          headers: {
            'X-API-KEY': Env.kurHesaplaApiKey,
            'User-Agent': Env.kurHesaplaUserAgent,
          },
        ),
      ),
      basePathOverride: Env.kurHesaplaApiClient,
    );
  }

  late final Openapi _apiClient;

  Openapi get apiClient => _apiClient;
}
