import 'package:get/get.dart';
import '../entity/animal.dart';
import '../entity/dto/animal_dto.dart';
import 'package:flutter/material.dart';
import '../data/animal/animal_repository.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AnimalController extends GetxController {
  final animalFirstPageFormKey = GlobalKey<FormBuilderState>();
  final animalSecondPageFormKey = GlobalKey<FormBuilderState>();
  final _animalRepository = AnimalRepository(provider: Get.find());

  @override
  void onInit() {
    _animalRepository.getAllAnimals();
    super.onInit();
  }

  Future<List<Animal>> getAllAnimals() async {
    return await _animalRepository.getAllAnimals();
  }

  Future<Animal> getAnimalById(String id) async {
    return await _animalRepository.getAnimalById(id);
  }

  Future<Animal> addAnimal(AnimalDto animalDto) async {
    return await _animalRepository.saveAnimal(animalDto);
  }

  Future<Animal> updateAnimal(String id, AnimalDto animalDto) async {
    return await _animalRepository.updateAnimalById(id, animalDto);
  }

  Future<dynamic> deleteAnimalById(String id) async {
    return await _animalRepository.deleteAnimalById(id);
  }
}
