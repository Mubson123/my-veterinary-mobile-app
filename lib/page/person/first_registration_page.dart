import 'package:flutter_form_builder/flutter_form_builder.dart';
import '/controller/person_controller.dart';
import 'package:flutter/material.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import '/navigation/routes.dart';
import 'package:get/get.dart';
import '/entity/person.dart';

class FirstRegistrationPage extends GetView<PersonController> {
  const FirstRegistrationPage({Key? key}) : super(key: key);

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
                    const AppPageTitle(title: AppUtilsName.pageName),
                    AppDropDownBuilder(
                      name: AppFieldName.title,
                      formKey: formKey,
                      elements: UserTitle.values,
                    ),
                    AppSpace(height: Get.height * 0.01),
                    AppFormBuilderTextField(
                      name: AppFieldName.firstname,
                      hintText: AppHintText.firstname,
                      keyboardType: TextInputType.name,
                      appValidation: (value) => (AppValidators.isBlank(value) ||
                          AppValidators.nameVal.hasMatch(value!)),
                      responseToValidation: PersonErrorMessage.firstname,
                    ),
                    AppSpace(height: Get.height * 0.01),
                    AppFormBuilderTextField(
                      name: AppFieldName.lastname,
                      hintText: AppHintText.lastname,
                      keyboardType: TextInputType.name,
                      appValidation: (value) => (AppValidators.isBlank(value) ||
                          AppValidators.nameVal.hasMatch(value!)),
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
                      appValidation: (value) => (AppValidators.isBlank(value) ||
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
                      onPressed: () {
                        final isValid = formKey.currentState!.saveAndValidate();
                        if (isValid) {
                          Get.toNamed(Routes.secondRegistrationPage);
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
    );
  }
}
