# openapi.api.AppMediaControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:6868*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAll**](AppMediaControllerApi.md#deleteall) | **DELETE** /api/veterinary/media | 
[**deleteMediaByAnimalId**](AppMediaControllerApi.md#deletemediabyanimalid) | **DELETE** /api/veterinary/media/animal/{id} | 
[**deleteMediaById**](AppMediaControllerApi.md#deletemediabyid) | **DELETE** /api/veterinary/media/{id} | 
[**deleteMediaByPersonId**](AppMediaControllerApi.md#deletemediabypersonid) | **DELETE** /api/veterinary/media/person/{id} | 
[**getAllMedia**](AppMediaControllerApi.md#getallmedia) | **GET** /api/veterinary/media | 
[**getAllMediaByAnimalId**](AppMediaControllerApi.md#getallmediabyanimalid) | **GET** /api/veterinary/media/animal/{id} | 
[**getAllMediaByPersonId**](AppMediaControllerApi.md#getallmediabypersonid) | **GET** /api/veterinary/media/person/{id} | 
[**getMediaById**](AppMediaControllerApi.md#getmediabyid) | **GET** /api/veterinary/media/files/{id} | 
[**storeMediaByAninalId**](AppMediaControllerApi.md#storemediabyaninalid) | **POST** /api/veterinary/media/animal/{id} | 
[**storeMediaByPersonId**](AppMediaControllerApi.md#storemediabypersonid) | **POST** /api/veterinary/media/person/{id} | 
[**updateMediaById**](AppMediaControllerApi.md#updatemediabyid) | **PUT** /api/veterinary/media/{id} | 


# **deleteAll**
> ResponseMedia deleteAll()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();

try {
    final response = api.deleteAll();
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->deleteAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponseMedia**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMediaByAnimalId**
> ResponseMedia deleteMediaByAnimalId(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 

try {
    final response = api.deleteMediaByAnimalId(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->deleteMediaByAnimalId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ResponseMedia**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMediaById**
> ResponseMedia deleteMediaById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 

try {
    final response = api.deleteMediaById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->deleteMediaById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ResponseMedia**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMediaByPersonId**
> ResponseMedia deleteMediaByPersonId(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 

try {
    final response = api.deleteMediaByPersonId(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->deleteMediaByPersonId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ResponseMedia**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMedia**
> BuiltList<ResponseMedia> getAllMedia()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();

try {
    final response = api.getAllMedia();
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->getAllMedia: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ResponseMedia&gt;**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMediaByAnimalId**
> BuiltList<ResponseMedia> getAllMediaByAnimalId(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 

try {
    final response = api.getAllMediaByAnimalId(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->getAllMediaByAnimalId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BuiltList&lt;ResponseMedia&gt;**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMediaByPersonId**
> BuiltList<ResponseMedia> getAllMediaByPersonId(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 

try {
    final response = api.getAllMediaByPersonId(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->getAllMediaByPersonId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BuiltList&lt;ResponseMedia&gt;**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMediaById**
> BuiltList<String> getMediaById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 

try {
    final response = api.getMediaById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->getMediaById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storeMediaByAninalId**
> BuiltList<ResponseMedia> storeMediaByAninalId(id, files)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 
final BuiltList<MultipartFile> files = /path/to/file.txt; // BuiltList<MultipartFile> | 

try {
    final response = api.storeMediaByAninalId(id, files);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->storeMediaByAninalId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **files** | [**BuiltList&lt;MultipartFile&gt;**](MultipartFile.md)|  | 

### Return type

[**BuiltList&lt;ResponseMedia&gt;**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storeMediaByPersonId**
> BuiltList<ResponseMedia> storeMediaByPersonId(id, files)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 
final BuiltList<MultipartFile> files = /path/to/file.txt; // BuiltList<MultipartFile> | 

try {
    final response = api.storeMediaByPersonId(id, files);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->storeMediaByPersonId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **files** | [**BuiltList&lt;MultipartFile&gt;**](MultipartFile.md)|  | 

### Return type

[**BuiltList&lt;ResponseMedia&gt;**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMediaById**
> ResponseMedia updateMediaById(id, file)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAppMediaControllerApi();
final String id = id_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.updateMediaById(id, file);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AppMediaControllerApi->updateMediaById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **file** | **MultipartFile**|  | 

### Return type

[**ResponseMedia**](ResponseMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

