import 'dart:ui';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '/controller/animal_controller.dart';
import 'package:flutter/material.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import 'package:get/get.dart';

class AnimalSecondRegistrationPage extends GetView<AnimalController> {
  const AnimalSecondRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = controller.animalSecondPageFormKey;
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
                      AppSpace(height: Get.height * 0.05),
                      AppFormBuilderTextField(
                        name: AppFieldName.color,
                        hintText: AppFieldName.color.capitalizeFirst!,
                        keyboardType: TextInputType.text,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: AnimalErrorMessage.color,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.length,
                        hintText: AppFieldName.length.capitalizeFirst!,
                        keyboardType: TextInputType.number,
                        appValidation: (value) {
                          if (value != null) {
                            return (!AppValidators.digitVal.hasMatch(value));
                          }
                          return false;
                        },
                        responseToValidation: AnimalErrorMessage.length,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.weight,
                        hintText: AppFieldName.weight.capitalizeFirst!,
                        keyboardType: TextInputType.number,
                        appValidation: (value) {
                          if (value != null) {
                            return (!AppValidators.digitVal.hasMatch(value));
                          }
                          return false;
                        },
                        responseToValidation: AnimalErrorMessage.weight,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.symptoms,
                        maxLines: 3,
                        hintText: AppFieldName.symptoms.capitalizeFirst!,
                        keyboardType: TextInputType.name,
                        appValidation: (value) => false,
                        responseToValidation: AnimalErrorMessage.symptoms,
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
                            onPressed: () async {
                              final isValid =
                                  formKey.currentState!.saveAndValidate();
                              if (isValid) {}
                            },
                            child: const Text(
                              AppUtilsName.signUp,
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
