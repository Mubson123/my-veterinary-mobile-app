import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class AppDropDownBuilder extends StatelessWidget {
  const AppDropDownBuilder({
    Key? key,
    this.initialValue,
    required this.name,
    required this.formKey,
    required this.elements,
  }) : super(key: key);
  final String name;
  final GlobalKey<FormBuilderState> formKey;
  final List<EnumClass> elements;
  final EnumClass? initialValue;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown(
      name: name,
      initialValue: initialValue ?? elements[elements.length - 1],
      isExpanded: false,
      borderRadius: BorderRadius.circular(5),
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == elements[elements.length - 1]) {
          return '${elements[elements.length - 1].name} Not Accepted';
        }
        return null;
      },
      dropdownColor: Colors.transparent.withOpacity(0.6),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.grey,
      ),
      items: elements
          .map(
            (item) => DropdownMenuItem(
              value: item,
              alignment: AlignmentDirectional.topStart,
              child: Text('${item.name.capitalizeFirst}'),
            ),
          )
          .toList(),
      decoration: InputDecoration(
        hintText: name.capitalizeFirst,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        suffix: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.grey,
          ),
          onPressed: () {
            formKey.currentState!.fields[name]?.reset();
          },
        ),
        contentPadding: const EdgeInsets.fromLTRB(12, 0, 0, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.transparent.withOpacity(0.6),
      ),
    );
  }
}
