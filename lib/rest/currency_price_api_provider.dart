import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/rest/kur_hesapla_client.dart';
import 'package:openapi/openapi.dart';

class CurrencyPriceApiProvider {
  CurrencyPriceApiProvider() {
    final kurHesaplaApi = GetIt.instance.get<KurHesaplaClient>();

    _currencyPriceResourceApi = CurrencyPriceResourceApi(
      kurHesaplaApi.apiClient.dio,
      kurHesaplaApi.apiClient.serializers,
    );
  }

  late final CurrencyPriceResourceApi _currencyPriceResourceApi;

  CurrencyPriceResourceApi get currencyPriceResourceApi =>
      _currencyPriceResourceApi;
}
