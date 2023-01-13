import '/data/animal/animal_provider.dart';
import '/entity/dto/animal_dto.dart';
import '/entity/animal.dart';

abstract class IAnimalRepository {
  Future<List<Animal>> getAllAnimals();

  Future<Animal> getAnimalById(String id);

  Future<Animal> saveAnimal(AnimalDto animalDto);

  Future<Animal> updateAnimalById(String id, AnimalDto animalDto);

  Future<dynamic> deleteAnimalById(String id);
}

class AnimalRepository implements IAnimalRepository {
  AnimalRepository({required this.provider});

  final IAnimalProvider provider;

  @override
  Future<List<Animal>> getAllAnimals() async {
    final response = await provider.getAllAnimals('');
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body!;
  }

  @override
  Future<Animal> getAnimalById(String id) async {
    final response = await provider.getAnimalById('/$id');
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body!;
  }

  @override
  Future<Animal> saveAnimal(AnimalDto animalDto) async {
    final response = await provider.addAnimal('', animalDto.toJson());
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body!;
  }

  @override
  Future<Animal> updateAnimalById(String id, AnimalDto animalDto) async {
    final response = await provider.updateAnimal('/$id', animalDto.toJson());
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body!;
  }

  @override
  Future<dynamic> deleteAnimalById(String id) async {
    final response = await provider.deleteAnimalById('/$id');
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
  }
}
