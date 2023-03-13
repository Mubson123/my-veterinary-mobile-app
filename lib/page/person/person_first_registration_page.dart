import 'dart:ui';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '/widgets/double_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/controller/person_controller.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import '/navigation/routes.dart';
import 'package:get/get.dart';

class PersonFirstRegistrationPage extends StatelessWidget {
  const PersonFirstRegistrationPage({Key? key, required this.controller})
      : super(key: key);
  final PersonController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final formKey = controller.personFirstPageFormKey;
    final value = formKey.currentState?.value;
    return Container(
      height: size.height,
      width: size.width,
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FormBuilder(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AppPageTitle(
                        title: AppUtilsName.pRegistry,
                        color: Colors.deepOrangeAccent.withOpacity(0.99),
                        size: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                      AppSpace(height: size.height * 0.05),
                      AppDropDownBuilder(
                        name: AppFieldName.title,
                        formKey: formKey,
                        initialValue: value?[AppFieldName.title],
                        elements: PersonDtoUserTitleEnum.values.toList(),
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.firstname,
                        hintText: AppHintText.firstname,
                        keyboardType: TextInputType.name,
                        initialValue: value?[AppFieldName.firstname],
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: PersonErrorMessage.firstname,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.lastname,
                        hintText: AppHintText.lastname,
                        keyboardType: TextInputType.name,
                        initialValue: value?[AppFieldName.lastname],
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: PersonErrorMessage.lastname,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppDatePicker(
                        name: AppFieldName.birthdate,
                        isAnimal: false,
                        initialValue: value?[AppFieldName.birthdate],
                        appValidation: (value) =>
                            (AppValidators.isDateBlank(value) ||
                                DateTime.now().year - value!.year <= 6),
                        responseToValidation: PersonErrorMessage.birthdate,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.email,
                        hintText: AppHintText.email,
                        initialValue: value?[AppFieldName.email],
                        keyboardType: TextInputType.emailAddress,
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.emailVal.hasMatch(value!)),
                        responseToValidation: PersonErrorMessage.email,
                      ),
                      AppSpace(height: size.height * 0.05),
                      DoubleButton(
                        firstButtonText: AppUtilsName.back,
                        secondButtonText: AppUtilsName.next,
                        firstRoute: () => Get.back(),
                        secondRoute: () async {
                          final isValid =
                              formKey.currentState!.saveAndValidate();
                          if (isValid) {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setString(
                                AppFieldName.email,
                                formKey
                                    .currentState!.value[AppFieldName.email]);
                            Get.toNamed(Routes.personSecondRegistrationPage);
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
