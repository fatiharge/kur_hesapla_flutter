import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/client/kur_hesapla_client.dart';
import 'package:kur_hesapla/app/extension/date_extension.dart';
import 'package:openapi/openapi.dart';

@injectable
class CurrencyPriceResourceApiService {
  CurrencyPriceResourceApiService({required KurHesaplaClient kurHesaplaClient})
      : _kurHesaplaClient = kurHesaplaClient;

  final KurHesaplaClient _kurHesaplaClient;

  Future<FindLatestResponse> getFindLatestResponse() async {
    final isRegistered = GetIt.I.isRegistered<FindLatestResponse>();
    FindLatestResponse? findLatestResponse;

    if (isRegistered) {
      findLatestResponse = GetIt.I.get<FindLatestResponse>();
      final isWithinLastMinutes =
          findLatestResponse.meta?.createdDate.isWithinLastMinutes(15) ?? false;

      if (isWithinLastMinutes) {
        return findLatestResponse;
      }
    }

    final response = await _kurHesaplaClient.apiClient
        .getCurrencyPriceResourceApi()
        .currencyPriceBaseCurrencyGet(baseCurrency: 'USD');

    if (response.statusCode == 200 && response.data != null) {
      final updatedResponse = response.data!;
      if (!isRegistered) {
        GetIt.I.registerSingleton<FindLatestResponse>(updatedResponse);
      } else {
        GetIt.I.unregister<FindLatestResponse>();
        GetIt.I.registerSingleton<FindLatestResponse>(updatedResponse);
      }
      return updatedResponse;
    } else {
      throw Exception('Failed to fetch latest currency prices');
    }
  }
}
