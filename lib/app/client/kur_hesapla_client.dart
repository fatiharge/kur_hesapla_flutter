import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/env.dart';
import 'package:kur_hesapla_api/kur_hesapla_api.dart';

@singleton
class KurHesaplaClient {
  KurHesaplaClient()
      : _apiClient = KurHesaplaApi(
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

  final KurHesaplaApi _apiClient;

  KurHesaplaApi get apiClient => _apiClient;
}
