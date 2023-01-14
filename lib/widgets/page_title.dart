import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppPageTitle extends StatelessWidget {
  const AppPageTitle({
    Key? key,
    required this.title,
    required this.color,
    required this.size,
    required this.fontWeight,
  }) : super(key: key);
  final String title;
  final Color color;
  final double size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.03,),
        Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: size,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
