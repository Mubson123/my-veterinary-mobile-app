import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../entity/animal.dart';
import '../entity/dto/animal_dto.dart';
import 'package:flutter/material.dart';
import '../data/animal/animal_repository.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../utils/form_builder_name.dart';

class AnimalController extends GetxController {
  final animalFirstPageFormKey = GlobalKey<FormBuilderState>();
  final animalSecondPageFormKey = GlobalKey<FormBuilderState>();
  final _animalRepository = AnimalRepository(provider: Get.find());

  @override
  void onInit() async {
    await getAnimalsByOwnerId();
    super.onInit();
  }

  Future<List<Animal>> getAnimalsByOwnerId() async {
    final prefs = await SharedPreferences.getInstance();
    final id = prefs.getString('id');
    if (id != null) {
      return await _animalRepository.getAnimalsByOwnerId(id);
    }
    return [];
  }

  Future<Animal> getAnimalById(String id) async {
    return await _animalRepository.getAnimalById(id);
  }

  Future<Animal> addAnimal() async {
    return await _animalRepository.saveAnimal(await _setAnimalDto());
  }

  Future<Animal> updateAnimal(String id) async {
    return await _animalRepository.updateAnimalById(id, await _setAnimalDto());
  }

  Future<dynamic> deleteAnimalById(String id) async {
    return await _animalRepository.deleteAnimalById(id);
  }

  Future<AnimalDto> _setAnimalDto() async {
    final prefs = await SharedPreferences.getInstance();
    return AnimalDto(
      animalFirstPageFormKey.currentState!.value[AppFieldName.animalName],
      animalFirstPageFormKey.currentState!.value[AppFieldName.breed],
      animalFirstPageFormKey.currentState!.value[AppFieldName.type],
      animalFirstPageFormKey.currentState!.value[AppFieldName.gender],
      animalSecondPageFormKey.currentState!.value[AppFieldName.color],
      double.parse(
          animalSecondPageFormKey.currentState!.value[AppFieldName.length]),
      double.parse(
          animalSecondPageFormKey.currentState!.value[AppFieldName.weight]),
      animalSecondPageFormKey.currentState?.value[AppFieldName.symptoms],
      animalFirstPageFormKey.currentState?.value[AppFieldName.birthdate].day,
      animalFirstPageFormKey.currentState?.value[AppFieldName.birthdate].month,
      animalFirstPageFormKey.currentState?.value[AppFieldName.birthdate].year,
      [
        prefs.getString(AppFieldName.email)!
      ],
    );
  }
}
