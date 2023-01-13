import 'package:flutter_form_builder/flutter_form_builder.dart';
import '/controller/person_controller.dart';
import 'package:flutter/material.dart';
import '/widgets/widget_export.dart';
import '/utils/util_export.dart';
import 'package:get/get.dart';

class SecondRegistrationPage extends GetView<PersonController> {
  const SecondRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = controller.personSecondPageFormKey;
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
                    const AppPageTitle(title: AppUtilsName.pageName),
                    AppPhoneField(
                      controller: controller,
                    ),
                    AppFormBuilderTextField(
                      name: AppFieldName.streetAndHouseNumber,
                      hintText: AppHintText.streetAndHouseNumber,
                      keyboardType: TextInputType.streetAddress,
                      appValidation: (value) => (AppValidators.isBlank(value)),
                      responseToValidation:
                          PersonErrorMessage.streetAndHouseNumber,
                    ),
                    AppSpace(height: Get.height * 0.01),
                    AppFormBuilderTextField(
                      name: AppFieldName.postalCode,
                      hintText: AppHintText.postalCode,
                      keyboardType: TextInputType.number,
                      appValidation: (value) => (AppValidators.isBlank(value) ||
                          AppValidators.postCodeValidator.hasMatch(value!)),
                      responseToValidation: PersonErrorMessage.postalCode,
                    ),
                    AppSpace(height: Get.height * 0.01),
                    AppFormBuilderTextField(
                      name: AppFieldName.city,
                      hintText: AppHintText.city,
                      keyboardType: TextInputType.name,
                      appValidation: (value) => (AppValidators.isBlank(value) ||
                          AppValidators.nameVal.hasMatch(value!)),
                      responseToValidation: PersonErrorMessage.city,
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
                            if (isValid) {
                              await controller.addPerson().then((value) {
                                formKey.currentState!.reset();
                                controller.personFirstPageFormKey.currentState!
                                    .reset();
                              });
                            }
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
    );
  }
}
