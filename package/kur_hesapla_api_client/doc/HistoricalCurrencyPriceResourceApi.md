# openapi.api.HistoricalCurrencyPriceResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**historicalCurrencyPriceGet**](HistoricalCurrencyPriceResourceApi.md#historicalcurrencypriceget) | **GET** /historical-currency-price | Fetch historical currency prices


# **historicalCurrencyPriceGet**
> HistoricalPricesResponse historicalCurrencyPriceGet(endDate, startDate, userAgent, X_API_KEY)

Fetch historical currency prices

Fetches historical currency prices for the specified date range and base currency. The start and end dates must be provided as query parameters.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHistoricalCurrencyPriceResourceApi();
final Date endDate = 2013-10-20; // Date | End date (e.g. 2024-12-10)
final Date startDate = 2013-10-20; // Date | Start date (e.g. 2024-12-09)
final String userAgent = userAgent_example; // String | The User-Agent header of the request
final String X_API_KEY = X_API_KEY_example; // String | API Key for authentication

try {
    final response = api.historicalCurrencyPriceGet(endDate, startDate, userAgent, X_API_KEY);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HistoricalCurrencyPriceResourceApi->historicalCurrencyPriceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endDate** | **Date**| End date (e.g. 2024-12-10) | 
 **startDate** | **Date**| Start date (e.g. 2024-12-09) | 
 **userAgent** | **String**| The User-Agent header of the request | [optional] 
 **X_API_KEY** | **String**| API Key for authentication | [optional] 

### Return type

[**HistoricalPricesResponse**](HistoricalPricesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

