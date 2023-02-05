import 'package:get/get.dart';
import 'package:openapi/openapi.dart';
import 'package:flutter/material.dart';
import '../utils/form_builder_name.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AnimalController extends GetxController {
  final _api = Openapi().getAnimalControllerApi();
  final animalFirstPageFormKey = GlobalKey<FormBuilderState>();
  final animalSecondPageFormKey = GlobalKey<FormBuilderState>();

  @override
  void onInit() {
    getAllAnimals();
    super.onInit();
  }

  Future<List<ResponseAnimal>> getAllAnimals() async {
    final response = await _api.findAllAnimals();
    if (response.statusCode != 200) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<List<ResponseAnimal>> getAnimalsByOwnerId(String id) async {
    final response = await _api.findAnimalsByOwnerId(id: id);
    if (response.statusCode != 200) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<ResponseAnimal> getAnimalById(String id) async {
    final response = await _api.findAnimalById(id: id);
    if (response.statusCode != 200) {
      throw Exception();
    }
    return response.data!;
  }

  Future<ResponseAnimal> addAnimal() async {
    final response = await _api.addAnimal(animalDto: await _setAnimalDto());
    if (response.statusCode != 204) {
      throw Exception();
    }
    return response.data!;
  }

  Future<ResponseAnimal> updateAnimal(String id) async {
    final response =
        await _api.updateAnimal(id: id, animalDto: await _setAnimalDto());
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }

  Future<dynamic> deleteAnimalById(String id) async {
    final response = await _api.deleteAnimal(id: id);
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }

  Future<AnimalDto> _setAnimalDto() async {
    final prefs = await SharedPreferences.getInstance();

    return AnimalDto((builder) {
      builder.name =
          animalFirstPageFormKey.currentState!.value[AppFieldName.animalName];
      builder.breed =
          animalFirstPageFormKey.currentState!.value[AppFieldName.breed];
      builder.type =
          animalFirstPageFormKey.currentState!.value[AppFieldName.type];
      builder.gender =
          animalFirstPageFormKey.currentState!.value[AppFieldName.gender];
      builder.color =
          animalSecondPageFormKey.currentState!.value[AppFieldName.color];
      builder.length = double.parse(
          animalSecondPageFormKey.currentState!.value[AppFieldName.length]);
      builder.weight = double.parse(
          animalSecondPageFormKey.currentState!.value[AppFieldName.weight]);
      builder.symptoms =
          animalSecondPageFormKey.currentState?.value[AppFieldName.symptoms];
      builder.day = animalFirstPageFormKey
          .currentState?.value[AppFieldName.birthdate].day;
      builder.month = animalFirstPageFormKey
          .currentState?.value[AppFieldName.birthdate].month;
      builder.year = animalFirstPageFormKey
          .currentState?.value[AppFieldName.birthdate].year;
      builder.animalOwnerEmails.add("${prefs.getString(AppFieldName.email)}");
    });
  }
}
