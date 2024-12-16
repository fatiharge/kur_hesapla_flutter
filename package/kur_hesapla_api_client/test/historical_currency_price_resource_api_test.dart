import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HistoricalCurrencyPriceResourceApi
void main() {
  final instance = Openapi().getHistoricalCurrencyPriceResourceApi();

  group(HistoricalCurrencyPriceResourceApi, () {
    // Get Historical Prices
    //
    //Future<BuiltList<HistoricalCurrencyPrice>> historicalCurrencyPriceGet({ String baseCurrency, String date }) async
    test('test historicalCurrencyPriceGet', () async {
      // TODO
    });

  });
}
