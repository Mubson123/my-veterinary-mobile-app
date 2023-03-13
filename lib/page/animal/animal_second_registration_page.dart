import 'dart:ui';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:myveterinary/widgets/double_button.dart';
import '../../navigation/routes.dart';
import '/controller/animal_controller.dart';
import 'package:flutter/material.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import 'package:get/get.dart';

class AnimalSecondRegistrationPage extends StatelessWidget {
  const AnimalSecondRegistrationPage({Key? key, required this.controller})
      : super(key: key);
  final AnimalController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final formKey = controller.animalSecondPageFormKey;
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
          restorationId: 'second_registration_page',
          body: SafeArea(
            child: SingleChildScrollView(
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
                        name: AppFieldName.color,
                        hintText: AppFieldName.color.capitalizeFirst!,
                        keyboardType: TextInputType.text,
                        initialValue: value?[AppFieldName.color],
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: AnimalErrorMessage.color,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.length,
                        hintText: AppFieldName.length.capitalizeFirst!,
                        keyboardType: TextInputType.number,
                        initialValue: value?[AppFieldName.length],
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.digitVal.hasMatch(value!)),
                        responseToValidation:
                            AppFieldName.length.capitalizeFirst!,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.weight,
                        hintText: AppFieldName.weight.capitalizeFirst!,
                        keyboardType: TextInputType.number,
                        initialValue: value?[AppFieldName.weight],
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.digitVal.hasMatch(value!)),
                        responseToValidation: AnimalErrorMessage.weight,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.symptoms,
                        hintText: AppFieldName.symptoms.capitalizeFirst!,
                        keyboardType: TextInputType.name,
                        appValidation: (value) => false,
                        initialValue: value?[AppFieldName.symptoms],
                        responseToValidation: AnimalErrorMessage.symptoms,
                      ),
                      AppSpace(height: size.height * 0.05),
                      DoubleButton(
                        firstButtonText: AppUtilsName.back,
                        secondButtonText: AppUtilsName.signUp,
                        firstRoute: () => Get.back(),
                        secondRoute: () async {
                          final isValid =
                              formKey.currentState!.saveAndValidate();
                          if (isValid) {
                            await controller.addAnimal().then(
                              (value) {
                                formKey.currentState!.reset();
                                controller.animalFirstPageFormKey.currentState!
                                    .reset();
                                Get.offAllNamed(Routes.homePage);
                              },
                            );
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
