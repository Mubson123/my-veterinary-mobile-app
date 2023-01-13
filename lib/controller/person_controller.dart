import 'package:get/get.dart';
import '../entity/person.dart';
import 'package:flutter/material.dart';
import '../entity/dto/person_dto.dart';
import '/utils/form_builder_name.dart';
import '../data/person/person_repository.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PersonController extends GetxController {
  final personFirstPageFormKey = GlobalKey<FormBuilderState>();
  final personSecondPageFormKey = GlobalKey<FormBuilderState>();
  final _personRepository = PersonRepository(provider: Get.find());

  String phoneNumber = '5555555555';
  String country = 'Germany';

  @override
  void onInit() {
    _personRepository.getAllPersons();
    super.onInit();
  }

  Future<List<Person>> getAllPersons() async {
    return await _personRepository.getAllPersons();
  }

  Future<Person> getPersonById(String id) async {
    return await _personRepository.getPersonById(id);
  }

  Future<Person> getPersonEmail(String email) async {
    return await _personRepository.getPersonByEmail(email);
  }

  Future<dynamic> addPerson() async {
    return await _personRepository.savePerson(setPersonDto());
  }

  Future<dynamic> updatePerson(String id) async {
    return await _personRepository.updatePersonById(id, setPersonDto());
  }

  Future<dynamic> deletePersonById(String id) async {
    return await _personRepository.deletePersonById(id);
  }

  PersonDto setPersonDto() {
    final UserTitle title =
        personFirstPageFormKey.currentState!.value[AppFieldName.title];
    return PersonDto(
      title.name,
      personFirstPageFormKey.currentState!.value[AppFieldName.lastname],
      personFirstPageFormKey.currentState!.value[AppFieldName.firstname],
      personFirstPageFormKey.currentState!.value[AppFieldName.birthdate].day,
      personFirstPageFormKey.currentState!.value[AppFieldName.birthdate].month,
      personFirstPageFormKey.currentState!.value[AppFieldName.birthdate].year,
      phoneNumber,
      personFirstPageFormKey.currentState!.value[AppFieldName.email],
      personSecondPageFormKey
          .currentState!.value[AppFieldName.streetAndHouseNumber],
      int.parse(
          personSecondPageFormKey.currentState!.value[AppFieldName.postalCode]),
      personSecondPageFormKey.currentState!.value[AppFieldName.city],
      country,
    );
  }
}
