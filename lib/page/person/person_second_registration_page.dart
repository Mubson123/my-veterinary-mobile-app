import 'dart:ui';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../navigation/routes.dart';
import '/widgets/double_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/controller/person_controller.dart';
import 'package:flutter/material.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import 'package:get/get.dart';

class PersonSecondRegistrationPage extends StatelessWidget {
  const PersonSecondRegistrationPage({Key? key, required this.controller})
      : super(key: key);
  final PersonController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final formKey = controller.personSecondPageFormKey;
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
          restorationId: 'second_registration_page',
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
                      AppPhoneField(
                        controller: controller,
                        initialValue: value?[AppFieldName.phoneNumber],
                      ),
                      AppFormBuilderTextField(
                        name: AppFieldName.streetAndHouseNumber,
                        hintText: AppHintText.streetAndHouseNumber,
                        keyboardType: TextInputType.streetAddress,
                        initialValue: value?[AppFieldName.streetAndHouseNumber],
                        appValidation: (value) =>
                            (AppValidators.isBlank(value)),
                        responseToValidation:
                            PersonErrorMessage.streetAndHouseNumber,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.postalCode,
                        hintText: AppHintText.postalCode,
                        keyboardType: TextInputType.number,
                        initialValue: value?[AppFieldName.postalCode],
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                AppValidators.postCodeValidator
                                    .hasMatch(value!)),
                        responseToValidation: PersonErrorMessage.postalCode,
                      ),
                      AppSpace(height: size.height * 0.01),
                      AppFormBuilderTextField(
                        name: AppFieldName.city,
                        hintText: AppHintText.city,
                        keyboardType: TextInputType.name,
                        initialValue: value?[AppFieldName.city],
                        appValidation: (value) =>
                            (AppValidators.isBlank(value) ||
                                !AppValidators.nameVal.hasMatch(value!)),
                        responseToValidation: PersonErrorMessage.city,
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
                            final prefs = await SharedPreferences.getInstance();
                            await controller.addPerson().then(
                              (value) {
                                if (value.id != null) {
                                  prefs.setString(
                                      AppUtilsName.userId, value.id!);
                                }
                                formKey.currentState!.reset();
                                controller.personFirstPageFormKey.currentState!
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
