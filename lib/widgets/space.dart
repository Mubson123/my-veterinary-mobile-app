import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppSpace extends StatelessWidget {
  const AppSpace({Key? key, required this.height}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    if (Get.width > 500.0) {
      return SizedBox(height: height * 2,);
    }
    return SizedBox(height: height,);
  }
}
