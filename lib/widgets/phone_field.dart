import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '/controller/person_controller.dart';

class AppPhoneField extends StatelessWidget {
  const AppPhoneField({Key? key, required this.controller}) : super(key: key);
  final PersonController controller;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      style: const TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      dropdownIcon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: 'Phone Number',
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.7),
        ),
        helperStyle: const TextStyle(
          color: Colors.white,
        ),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.transparent.withOpacity(0.6),
      ),
      onSaved: (phone) {
        controller.phoneNumber = phone!.completeNumber;
      },
      onCountryChanged: (country) {
        controller.country = country.name;
      },
    );
  }
}
