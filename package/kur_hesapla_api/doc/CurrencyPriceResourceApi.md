# kur_hesapla_api.api.CurrencyPriceResourceApi

## Load the API package
```dart
import 'package:kur_hesapla_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currencyPriceGet**](CurrencyPriceResourceApi.md#currencypriceget) | **GET** /currency-price | Find the latest currency price


# **currencyPriceGet**
> FindLatestResponse currencyPriceGet(baseCurrency, userAgent, X_API_KEY)

Find the latest currency price

Fetch the latest price for the given base currency.

### Example
```dart
import 'package:kur_hesapla_api/api.dart';

final api = KurHesaplaApi().getCurrencyPriceResourceApi();
final String baseCurrency = baseCurrency_example; // String | 
final String userAgent = userAgent_example; // String | The User-Agent header of the request
final String X_API_KEY = X_API_KEY_example; // String | API Key for authentication

try {
    final response = api.currencyPriceGet(baseCurrency, userAgent, X_API_KEY);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CurrencyPriceResourceApi->currencyPriceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseCurrency** | **String**|  | [optional] 
 **userAgent** | **String**| The User-Agent header of the request | [optional] 
 **X_API_KEY** | **String**| API Key for authentication | [optional] 

### Return type

[**FindLatestResponse**](FindLatestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

