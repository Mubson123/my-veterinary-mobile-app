import 'package:flutter/material.dart';
import '/widgets/space.dart';
import 'package:get/get.dart';
import '/utils/form_builder_name.dart';

class AppPageTitle extends StatelessWidget {
  const AppPageTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppUtilsName.title,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.deepOrangeAccent.withOpacity(0.99),
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        AppSpace(height: Get.height * 0.02),
        Text(
          title,
          style: TextStyle(
            color: Colors.white.withOpacity(0.99),
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        AppSpace(height: Get.height * 0.05),
      ],
    );
  }
}
