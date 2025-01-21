# news_api.api.NewsResourceApi

## Load the API package
```dart
import 'package:news_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsGet**](NewsResourceApi.md#newsget) | **GET** /news | Get Paginated News
[**newsHelloGet**](NewsResourceApi.md#newshelloget) | **GET** /news/hello | Get Hello Message


# **newsGet**
> GetNewsResponse newsGet(page, size, userAgent, X_API_KEY)

Get Paginated News

Fetches a paginated list of news articles. The request accepts page and size parameters to control the pagination. By default, the first page with 5 items will be returned. The page parameter starts from 1.

### Example
```dart
import 'package:news_api/api.dart';

final api = NewsApi().getNewsResourceApi();
final int page = 56; // int | The page number to fetch, starting from 1. Defaults to 1 if not provided.
final int size = 56; // int | The number of news articles per page. Defaults to 5 if not provided.
final String userAgent = userAgent_example; // String | The User-Agent header of the request
final String X_API_KEY = X_API_KEY_example; // String | API Key for authentication

try {
    final response = api.newsGet(page, size, userAgent, X_API_KEY);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NewsResourceApi->newsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number to fetch, starting from 1. Defaults to 1 if not provided. | [optional] [default to 1]
 **size** | **int**| The number of news articles per page. Defaults to 5 if not provided. | [optional] [default to 5]
 **userAgent** | **String**| The User-Agent header of the request | [optional] 
 **X_API_KEY** | **String**| API Key for authentication | [optional] 

### Return type

[**GetNewsResponse**](GetNewsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsHelloGet**
> String newsHelloGet(userAgent, X_API_KEY)

Get Hello Message

Returns a simple hello message

### Example
```dart
import 'package:news_api/api.dart';

final api = NewsApi().getNewsResourceApi();
final String userAgent = userAgent_example; // String | The User-Agent header of the request
final String X_API_KEY = X_API_KEY_example; // String | API Key for authentication

try {
    final response = api.newsHelloGet(userAgent, X_API_KEY);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NewsResourceApi->newsHelloGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userAgent** | **String**| The User-Agent header of the request | [optional] 
 **X_API_KEY** | **String**| API Key for authentication | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

