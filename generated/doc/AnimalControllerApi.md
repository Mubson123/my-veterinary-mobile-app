# openapi.api.AnimalControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:6868*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAnimal**](AnimalControllerApi.md#addanimal) | **POST** /api/veterinary/animals | 
[**deleteAll1**](AnimalControllerApi.md#deleteall1) | **DELETE** /api/veterinary/animals | 
[**deleteAnimal**](AnimalControllerApi.md#deleteanimal) | **DELETE** /api/veterinary/animals/{id} | 
[**findAllAnimals**](AnimalControllerApi.md#findallanimals) | **GET** /api/veterinary/animals | 
[**findAnimalById**](AnimalControllerApi.md#findanimalbyid) | **GET** /api/veterinary/animals/{id} | 
[**findAnimalsByOwnerId**](AnimalControllerApi.md#findanimalsbyownerid) | **GET** /api/veterinary/animals/owners/{id} | 
[**updateAnimal**](AnimalControllerApi.md#updateanimal) | **PUT** /api/veterinary/animals/{id} | 


# **addAnimal**
> ResponseAnimal addAnimal(animalDto)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAnimalControllerApi();
final AnimalDto animalDto = ; // AnimalDto | 

try {
    final response = api.addAnimal(animalDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnimalControllerApi->addAnimal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **animalDto** | [**AnimalDto**](AnimalDto.md)|  | 

### Return type

[**ResponseAnimal**](ResponseAnimal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAll1**
> ResponseAnimal deleteAll1()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAnimalControllerApi();

try {
    final response = api.deleteAll1();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnimalControllerApi->deleteAll1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponseAnimal**](ResponseAnimal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAnimal**
> ResponseAnimal deleteAnimal(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAnimalControllerApi();
final String id = id_example; // String | 

try {
    final response = api.deleteAnimal(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnimalControllerApi->deleteAnimal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ResponseAnimal**](ResponseAnimal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllAnimals**
> BuiltList<ResponseAnimal> findAllAnimals()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAnimalControllerApi();

try {
    final response = api.findAllAnimals();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnimalControllerApi->findAllAnimals: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ResponseAnimal&gt;**](ResponseAnimal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAnimalById**
> ResponseAnimal findAnimalById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAnimalControllerApi();
final String id = id_example; // String | 

try {
    final response = api.findAnimalById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnimalControllerApi->findAnimalById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ResponseAnimal**](ResponseAnimal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAnimalsByOwnerId**
> BuiltList<ResponseAnimal> findAnimalsByOwnerId(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAnimalControllerApi();
final String id = id_example; // String | 

try {
    final response = api.findAnimalsByOwnerId(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnimalControllerApi->findAnimalsByOwnerId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BuiltList&lt;ResponseAnimal&gt;**](ResponseAnimal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAnimal**
> ResponseAnimal updateAnimal(id, animalDto)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAnimalControllerApi();
final String id = id_example; // String | 
final AnimalDto animalDto = ; // AnimalDto | 

try {
    final response = api.updateAnimal(id, animalDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AnimalControllerApi->updateAnimal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **animalDto** | [**AnimalDto**](AnimalDto.md)|  | 

### Return type

[**ResponseAnimal**](ResponseAnimal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

