import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/env.dart';
import 'package:news_api/news_api.dart';

@singleton
class NewsApiClient {
  NewsApiClient()
      : _apiClient = NewsApi(
          dio: Dio(
            BaseOptions(
              baseUrl: Env.newsApiClient,
              contentType: 'application/json',
              headers: {
                'X-API-KEY': Env.newsApiKey,
                'User-Agent': Env.newsUserAgent,
              },
            ),
          ),
          basePathOverride: Env.kurHesaplaApiClient,
        );

  final NewsApi _apiClient;

  NewsApi get apiClient => _apiClient;
}
