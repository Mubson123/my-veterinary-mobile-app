import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/material.dart';

class AppFormBuilderTextField extends StatelessWidget {
  const AppFormBuilderTextField({
    Key? key,
    this.maxLines,
    required this.name,
    required this.keyboardType,
    required this.hintText,
    required this.responseToValidation,
    required this.appValidation,
  }) : super(key: key);
  final String name;
  final String hintText;
  final int? maxLines;
  final TextInputType keyboardType;
  final String responseToValidation;
  final bool Function(String?) appValidation;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      maxLines: maxLines,
      keyboardType: keyboardType,
      autocorrect: false,
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
