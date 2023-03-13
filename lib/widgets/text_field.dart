import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/material.dart';

import '../utils/form_builder_name.dart';

class AppFormBuilderTextField extends StatelessWidget {
  const AppFormBuilderTextField({
    Key? key,
    required this.name,
    required this.hintText,
    this.initialValue,
    required this.keyboardType,
    required this.appValidation,
    required this.responseToValidation,
  }) : super(key: key);
  final String name;
  final String hintText;
  final String? initialValue;
  final TextInputType keyboardType;
  final bool Function(String?) appValidation;
  final String responseToValidation;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      maxLines: name == AppFieldName.symptoms ? 3 : null,
      keyboardType: keyboardType,
      autocorrect: false,
      initialValue: initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      cursorColor: Colors.white,
      textInputAction: TextInputAction.unspecified,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        filled: true,
        fillColor: Colors.transparent.withOpacity(0.7),
      ),
      validator: (value) {
        if (appValidation(value)) {
          return responseToValidation;
        }
        return null;
      },
    );
  }
}
