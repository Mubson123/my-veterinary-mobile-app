import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppDatePicker extends StatelessWidget {
  const AppDatePicker({
    Key? key,
    required this.name,
    required this.isAnimal,
    required this.responseToValidation,
    required this.appValidation,
  }) : super(key: key);
  final String name;
  final bool isAnimal;
  final String responseToValidation;
  final bool Function(DateTime?) appValidation;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: name,
      initialDate: DateTime.now(),
      currentDate: DateTime.now(),
      lastDate: DateTime(2100, 1, 1),
      inputType: InputType.date,
      style: const TextStyle(color: Colors.white),
      format: isAnimal == true
          ? DateFormat('EEE, MMM d, yyyy')
          : DateFormat('dd-MM-yyyy'),
      decoration: InputDecoration(
        hintText: name.capitalizeFirst,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.transparent.withOpacity(0.6),
      ),
      validator: (value) {
        if (appValidation(value)) {
          return responseToValidation;
        }
        return null;
      },
      transitionBuilder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Colors.deepOrangeAccent,
                onPrimary: Colors.white,
                onSurface: Colors.black,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.deepOrangeAccent),
              )),
          child: child!,
        );
      },
    );
  }
}
