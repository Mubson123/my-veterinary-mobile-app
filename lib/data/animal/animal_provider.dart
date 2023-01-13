import 'package:get/get.dart';
import '/entity/animal.dart';

abstract class IAnimalProvider {
  Future<Response<List<Animal>>> getAllAnimals(String url);

  Future<Response<Animal>> getAnimalById(String url);

  Future<Response<Animal>> addAnimal(String url, Map<String, dynamic> body);

  Future<Response<Animal>> updateAnimal(String url, Map<String, dynamic> body);

  Future<Response<dynamic>> deleteAnimalById(String url);
}

class AnimalProvider extends GetConnect
    implements IAnimalProvider, GetxService {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://localhost:8080/api/veterinary/animals';
    super.onInit();
  }

  @override
  void onClose() {
    httpClient.close();
    super.onClose();
  }

  @override
  Future<Response<List<Animal>>> getAllAnimals(String url) {
    return get(url, decoder: (data) => Animal.mapFromJson(data));
  }

  @override
  Future<Response<Animal>> getAnimalById(String url) {
    return get(url,
        decoder: (data) => Animal.fromJson(data as Map<String, dynamic>));
  }

  @override
  Future<Response<Animal>> addAnimal(String url, Map<String, dynamic> body) {
    return post(url, body,
        decoder: (data) => Animal.fromJson(data as Map<String, dynamic>));
  }

  @override
  Future<Response<Animal>> updateAnimal(String url, dynamic body) {
    return put(url, body,
        decoder: (data) => Animal.fromJson(data as Map<String, dynamic>));
  }

  @override
  Future<Response<dynamic>> deleteAnimalById(String url) {
    return delete(url,
        decoder: (data) => Animal.fromJson(data as Map<String, dynamic>));
  }
}
