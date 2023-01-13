import 'package:get/get.dart';
import '/entity/person.dart';

abstract class IPersonProvider {
  Future<Response<List<Person>>> getAllPersons(String url);

  Future<Response<Person>> getPersonById(String url);

  Future<Response<Person>> getPersonByEmail(String url);

  Future<Response<Person>> addPerson(String url, Map<String, dynamic> body);

  Future<Response<Person>> updatePerson(String url, Map<String, dynamic> body);

  Future<Response<dynamic>> deletePersonById(String url);
}

class PersonProvider extends GetConnect
    implements IPersonProvider, GetxService {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://localhost:8080/api/veterinary/persons';
    super.onInit();
  }

  @override
  void onClose() {
    httpClient.close();
    super.onClose();
  }

  @override
  Future<Response<List<Person>>> getAllPersons(String url) {
    return get(url, decoder: (data) => Person.mapFromJson(data));
  }

  @override
  Future<Response<Person>> getPersonById(String url) {
    return get(url,
        decoder: (data) => Person.fromJson(data as Map<String, dynamic>));
  }

  @override
  Future<Response<Person>> getPersonByEmail(String url) {
    return get(url,
        decoder: (data) => Person.fromJson(data as Map<String, dynamic>));
  }

  @override
  Future<Response<Person>> addPerson(String url, Map<String, dynamic> body) {
    return post(url, body,
        decoder: (data) => Person.fromJson(data as Map<String, dynamic>));
  }

  @override
  Future<Response<Person>> updatePerson(String url, Map<String, dynamic> body) {
    return put(url, body,
        decoder: (data) => Person.fromJson(data as Map<String, dynamic>));
  }

  @override
  Future<Response<dynamic>> deletePersonById(String url) {
    return delete(url,
        decoder: (data) => Person.fromJson(data as Map<String, dynamic>));
  }
}
