import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/product/rest/kur_hesapla_api.dart';
import 'package:openapi/openapi.dart';

class CurrencyPriceResourceService {
  CurrencyPriceResourceService() {
    final kurHesaplaApi = GetIt.instance.get<KurHesaplaApi>();

    _currencyPriceResourceApi = CurrencyPriceResourceApi(
      kurHesaplaApi.apiClient.dio,
      kurHesaplaApi.apiClient.serializers,
    );
  }

  late final CurrencyPriceResourceApi _currencyPriceResourceApi;

  CurrencyPriceResourceApi get currencyPriceResourceApi =>
      _currencyPriceResourceApi;
}
