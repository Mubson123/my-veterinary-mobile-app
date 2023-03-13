import 'dart:ui';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:myveterinary/widgets/double_button.dart';
import 'package:openapi/openapi.dart';
import '/controller/animal_controller.dart';
import 'package:flutter/material.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import '/navigation/routes.dart';
import 'package:get/get.dart';

class AnimalFirstRegistrationPage extends StatelessWidget {
  const AnimalFirstRegistrationPage({Key? key, required this.controller}) : super(key: key);
  final AnimalController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final formKey = controller.animalFirstPageFormKey;
    final value = formKey.currentState?.value;
    return Container(
      height: size.height,
      width: size.width,
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
                      AppSpace(height: size.height * 0.05),
                      AppFormBuilderTextField(
                        name: AppFieldName.animalName,
                        hintText: AppFieldName.animalName.capitalizeFirst!,
                        keyboardType: TextInputType.name,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.nameVal.hasMatch(value!)),
                        initialValue: value?[AppFieldName.animalName],
                        responseToValidation: AnimalErrorMessage.name,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.breed,
                        hintText: AppFieldName.breed.capitalizeFirst!,
                        keyboardType: TextInputType.name,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.nameVal.hasMatch(value!)),
                        initialValue: value?[AppFieldName.breed],
                        responseToValidation: AnimalErrorMessage.breed,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.type,
                        hintText: AppFieldName.type.capitalizeFirst!,
                        keyboardType: TextInputType.name,
                        appValidation: (value) =>
                        (AppValidators.isBlank(value) ||
                            !AppValidators.nameVal.hasMatch(value!)),
                        initialValue: value?[AppFieldName.type],
                        responseToValidation: AnimalErrorMessage.type,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppDatePicker(
                        name: AppFieldName.birthdate,
                        isAnimal: true,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value.toString()) ||
                                AppValidators.isDateBlank(value)),
                        initialValue: value?[AppFieldName.birthdate],
                        responseToValidation: AnimalErrorMessage.birthdate,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppDropDownBuilder(
                        name: AppFieldName.gender,
                        formKey: formKey,
                        initialValue: value?[AppFieldName.gender],
                        elements: AnimalDtoGenderEnum.values.toList(),
                      ),
                      AppSpace(height: size.height * 0.05),
                      DoubleButton(
                        firstButtonText: AppUtilsName.back,
                        secondButtonText: AppUtilsName.next,
                        firstRoute: () => Get.back(),
                        secondRoute: () {
                          final isValid =
                              formKey.currentState!.saveAndValidate();
                          if (isValid) {
                            Get.toNamed(Routes.animalSecondRegistrationPage);
                          }
                        },
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
