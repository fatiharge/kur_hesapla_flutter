# openapi.api.HistoricalCurrencyPriceResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**historicalCurrencyPriceGet**](HistoricalCurrencyPriceResourceApi.md#historicalcurrencypriceget) | **GET** /historical-currency-price | Get Historical Prices


# **historicalCurrencyPriceGet**
> BuiltList<HistoricalCurrencyPrice> historicalCurrencyPriceGet(baseCurrency, date)

Get Historical Prices

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHistoricalCurrencyPriceResourceApi();
final String baseCurrency = baseCurrency_example; // String | 
final String date = date_example; // String | 

try {
    final response = api.historicalCurrencyPriceGet(baseCurrency, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HistoricalCurrencyPriceResourceApi->historicalCurrencyPriceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseCurrency** | **String**|  | [optional] 
 **date** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;HistoricalCurrencyPrice&gt;**](HistoricalCurrencyPrice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

