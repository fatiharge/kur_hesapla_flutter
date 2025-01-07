import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HistoricalCurrencyPriceResourceApi
void main() {
  final instance = Openapi().getHistoricalCurrencyPriceResourceApi();

  group(HistoricalCurrencyPriceResourceApi, () {
    // Fetch historical currency prices
    //
    // Fetches historical currency prices for the specified date range and base currency. The start and end dates must be provided as query parameters.
    //
    //Future<HistoricalPricesResponse> historicalCurrencyPriceGet(Date endDate, Date startDate, { String userAgent, String X_API_KEY }) async
    test('test historicalCurrencyPriceGet', () async {
      // TODO
    });

  });
}
