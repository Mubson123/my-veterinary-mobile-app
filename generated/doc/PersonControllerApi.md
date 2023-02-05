# openapi.api.PersonControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:6868*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPerson**](PersonControllerApi.md#addperson) | **POST** /api/veterinary/persons | 
[**deleteAllPerson**](PersonControllerApi.md#deleteallperson) | **DELETE** /api/veterinary/persons | 
[**deletePerson**](PersonControllerApi.md#deleteperson) | **DELETE** /api/veterinary/persons/{id} | 
[**findAllPersons**](PersonControllerApi.md#findallpersons) | **GET** /api/veterinary/persons | 
[**findPersonById**](PersonControllerApi.md#findpersonbyid) | **GET** /api/veterinary/persons/{id} | 
[**updatePerson**](PersonControllerApi.md#updateperson) | **PUT** /api/veterinary/persons/{id} | 


# **addPerson**
> ResponsePerson addPerson(personDto)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPersonControllerApi();
final PersonDto personDto = ; // PersonDto | 

try {
    final response = api.addPerson(personDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PersonControllerApi->addPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personDto** | [**PersonDto**](PersonDto.md)|  | 

### Return type

[**ResponsePerson**](ResponsePerson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAllPerson**
> ResponsePerson deleteAllPerson()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPersonControllerApi();

try {
    final response = api.deleteAllPerson();
    print(response);
} catch on DioError (e) {
    print('Exception when calling PersonControllerApi->deleteAllPerson: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponsePerson**](ResponsePerson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePerson**
> ResponsePerson deletePerson(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPersonControllerApi();
final String id = id_example; // String | 

try {
    final response = api.deletePerson(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PersonControllerApi->deletePerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ResponsePerson**](ResponsePerson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllPersons**
> BuiltList<ResponsePerson> findAllPersons()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPersonControllerApi();

try {
    final response = api.findAllPersons();
    print(response);
} catch on DioError (e) {
    print('Exception when calling PersonControllerApi->findAllPersons: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ResponsePerson&gt;**](ResponsePerson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPersonById**
> ResponsePerson findPersonById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPersonControllerApi();
final String id = id_example; // String | 

try {
    final response = api.findPersonById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PersonControllerApi->findPersonById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ResponsePerson**](ResponsePerson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePerson**
> ResponsePerson updatePerson(id, personDto)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPersonControllerApi();
final String id = id_example; // String | 
final PersonDto personDto = ; // PersonDto | 

try {
    final response = api.updatePerson(id, personDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PersonControllerApi->updatePerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **personDto** | [**PersonDto**](PersonDto.md)|  | 

### Return type

[**ResponsePerson**](ResponsePerson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

