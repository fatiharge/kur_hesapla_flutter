import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CurrencyPriceResourceApi
void main() {
  final instance = Openapi().getCurrencyPriceResourceApi();

  group(CurrencyPriceResourceApi, () {
    // Find the latest currency price
    //
    // Fetch the latest price for the given base currency.
    //
    //Future<FindLatestResponse> currencyPriceBaseCurrencyGet(String baseCurrency, { String userAgent, String X_API_KEY }) async
    test('test currencyPriceBaseCurrencyGet', () async {
      // TODO
    });

  });
}
