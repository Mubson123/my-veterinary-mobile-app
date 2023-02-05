import 'dart:ui';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:openapi/openapi.dart';
import '/controller/animal_controller.dart';
import 'package:flutter/material.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import '/navigation/routes.dart';
import 'package:get/get.dart';

class AnimalFirstRegistrationPage extends GetView<AnimalController> {
  const AnimalFirstRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = controller.animalFirstPageFormKey;
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/rottweiler.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          restorationId: 'first_registration_page',
          body: SafeArea(
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              child: FormBuilder(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AppPageTitle(
                        title: AppUtilsName.aRegistry,
                        color: Colors.deepOrangeAccent.withOpacity(0.99),
                        size: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                      AppSpace(height: Get.height * 0.05),
                      AppFormBuilderTextField(
                        name: AppFieldName.animalName,
                        hintText: AppFieldName.animalName.capitalizeFirst!,
                        keyboardType: TextInputType.name,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: AnimalErrorMessage.name,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.breed,
                        hintText: AppFieldName.breed.capitalizeFirst!,
                        keyboardType: TextInputType.name,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: AnimalErrorMessage.breed,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.type,
                        hintText: AppFieldName.type.capitalizeFirst!,
                        keyboardType: TextInputType.name,
                        appValidation: (value) {
                          if (value != null) {
                            return (AppValidators.nameVal.hasMatch(value));
                          }
                          return false;
                        },
                        responseToValidation: AnimalErrorMessage.type,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppDatePicker(
                        name: AppFieldName.birthdate,
                        isAnimal: false,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value.toString()) ||
                                AppValidators.isDateBlank(value)),
                        responseToValidation: AnimalErrorMessage.birthdate,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppDropDownBuilder(
                        name: AppFieldName.gender,
                        formKey: formKey,
                        elements: AnimalDtoGenderEnum.values.toList(),
                      ),
                      AppSpace(height: Get.height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CustomButton(
                            textColor: Colors.white,
                            elevation: 3,
                            height: 60,
                            width: Get.width / 3,
                            radius: 30,
                            color: Colors.deepOrangeAccent.withOpacity(0.8),
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text(
                              AppUtilsName.back,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          CustomButton(
                            textColor: Colors.white,
                            elevation: 3,
                            height: 60,
                            width: Get.width / 3,
                            radius: 30,
                            color: Colors.deepOrangeAccent.withOpacity(0.8),
                            onPressed: () {
                              final isValid =
                                  formKey.currentState!.saveAndValidate();
                              if (isValid) {
                                Get.toNamed(
                                    Routes.animalSecondRegistrationPage);
                              }
                            },
                            child: const Text(
                              AppUtilsName.next,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
