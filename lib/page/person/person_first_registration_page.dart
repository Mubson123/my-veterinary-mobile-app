import 'dart:ui';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/controller/person_controller.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import '/navigation/routes.dart';
import 'package:get/get.dart';

class PersonFirstRegistrationPage extends GetView<PersonController> {
  const PersonFirstRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = controller.personFirstPageFormKey;
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/flower.jpg'),
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
                        title: AppUtilsName.pRegistry,
                        color: Colors.deepOrangeAccent.withOpacity(0.99),
                        size: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                      AppSpace(height: Get.height * 0.05),
                      AppDropDownBuilder(
                        name: AppFieldName.title,
                        formKey: formKey,
                        elements: PersonUserTitleEnum.values.toList(),
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.firstname,
                        hintText: AppHintText.firstname,
                        keyboardType: TextInputType.name,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: PersonErrorMessage.firstname,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.lastname,
                        hintText: AppHintText.lastname,
                        keyboardType: TextInputType.name,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: PersonErrorMessage.lastname,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppDatePicker(
                        name: AppFieldName.birthdate,
                        isAnimal: false,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value.toString()) ||
                                AppValidators.isDateBlank(value)),
                        responseToValidation: PersonErrorMessage.birthdate,
                      ),
                      AppSpace(height: Get.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.email,
                        hintText: AppHintText.email,
                        keyboardType: TextInputType.emailAddress,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.emailVal.hasMatch(value!)),
                        responseToValidation: PersonErrorMessage.email,
                      ),
                      AppSpace(height: Get.height * 0.05),
                      CustomButton(
                        textColor: Colors.white,
                        elevation: 3,
                        height: 60,
                        width: Get.width,
                        radius: 30,
                        color: Colors.deepOrangeAccent.withOpacity(0.8),
                        onPressed: () async {
                          final isValid =
                              formKey.currentState!.saveAndValidate();
                          if (isValid) {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setString(AppFieldName.email,
                                formKey.currentState!.value[AppFieldName.email]);
                            Get.toNamed(Routes.personSecondRegistrationPage);
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
