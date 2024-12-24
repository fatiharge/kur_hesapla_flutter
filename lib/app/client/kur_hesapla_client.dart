import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/env.dart';
import 'package:openapi/openapi.dart';

@singleton
class KurHesaplaClient {
  KurHesaplaClient()
      : _apiClient = Openapi(
          dio: Dio(
            BaseOptions(
              baseUrl: Env.kurHesaplaApiClient,
              contentType: 'application/json',
              headers: {
                'X-API-KEY': Env.kurHesaplaApiKey,
                'User-Agent': Env.kurHesaplaUserAgent,
              },
            ),
          ),
          basePathOverride: Env.kurHesaplaApiClient,
        );

  final Openapi _apiClient;

  Openapi get apiClient => _apiClient;
}
