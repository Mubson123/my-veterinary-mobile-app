import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/utils/form_builder_name.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PersonController extends GetxController {
  final _api = Openapi().getPersonControllerApi();
  final personFirstPageFormKey = GlobalKey<FormBuilderState>();
  final personSecondPageFormKey = GlobalKey<FormBuilderState>();

  String phoneNumber = '5555555555';
  String country = 'Germany';

  @override
  void onInit() async {
    await getPersonById();
    super.onInit();
  }

  Future<List<ResponsePerson>> getAllPersons() async {
    final response = await _api.findAllPersons();
    if (response.statusCode != 200) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<ResponsePerson?> getPersonById() async {
    final prefs = await SharedPreferences.getInstance();
    final userKey = prefs.getString(AppUtilsName.userId);
    if (userKey != null) {
      final response = await _api.findPersonById(id: userKey);
      if (response.statusCode != 200) {
        throw Exception();
      }
      return response.data!;
    }
    return null;
  }

  Future<ResponsePerson> addPerson() async {
    final response = await _api.addPerson(personDto: _setPersonDto());
    print(response.statusCode);
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }

  Future<ResponsePerson> updatePerson(String id) async {
    final response =
        await _api.updatePerson(id: id, personDto: _setPersonDto());
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }

  Future<dynamic> deletePersonById(String id) async {
    final response = await _api.deletePerson(id: id);
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }

  PersonDto _setPersonDto() {
    return PersonDto((builder) {
      builder.userTitle = personFirstPageFormKey.currentState!.value[AppFieldName.title];
      builder.lastname =
          personFirstPageFormKey.currentState!.value[AppFieldName.lastname];
      builder.firstname =
          personFirstPageFormKey.currentState!.value[AppFieldName.firstname];
      builder.birthDay = personFirstPageFormKey
          .currentState!.value[AppFieldName.birthdate].day;
      builder.birthMonth = personFirstPageFormKey
          .currentState!.value[AppFieldName.birthdate].month;
      builder.birthYear = personFirstPageFormKey
          .currentState!.value[AppFieldName.birthdate].year;
      builder.phoneNumber = phoneNumber;
      builder.email =
          personFirstPageFormKey.currentState!.value[AppFieldName.email];
      builder.streetAndHouseNumber = personSecondPageFormKey
          .currentState!.value[AppFieldName.streetAndHouseNumber];
      builder.postalCode = int.parse(
          personSecondPageFormKey.currentState!.value[AppFieldName.postalCode]);
      builder.city =
          personSecondPageFormKey.currentState!.value[AppFieldName.city];
      builder.country = country;
    });
  }
}
