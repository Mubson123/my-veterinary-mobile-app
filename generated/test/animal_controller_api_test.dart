import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AnimalControllerApi
void main() {
  final instance = Openapi().getAnimalControllerApi();

  group(AnimalControllerApi, () {
    //Future<ResponseAnimal> addAnimal(AnimalDto animalDto) async
    test('test addAnimal', () async {
      // TODO
    });

    //Future<ResponseAnimal> deleteAll1() async
    test('test deleteAll1', () async {
      // TODO
    });

    //Future<ResponseAnimal> deleteAnimal(String id) async
    test('test deleteAnimal', () async {
      // TODO
    });

    //Future<BuiltList<ResponseAnimal>> findAllAnimals() async
    test('test findAllAnimals', () async {
      // TODO
    });

    //Future<ResponseAnimal> findAnimalById(String id) async
    test('test findAnimalById', () async {
      // TODO
    });

    //Future<BuiltList<ResponseAnimal>> findAnimalsByOwnerId(String id) async
    test('test findAnimalsByOwnerId', () async {
      // TODO
    });

    //Future<ResponseAnimal> updateAnimal(String id, AnimalDto animalDto) async
    test('test updateAnimal', () async {
      // TODO
    });

  });
}
