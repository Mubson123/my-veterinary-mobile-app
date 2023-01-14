import 'dart:ui';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../widgets/space.dart';
import '/controller/app_state_controller.dart';
import '/utils/form_builder_name.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/best-friends.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          restorationId: 'splash_page',
          body: GetBuilder<AppStateController>(
            builder: (controller) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppUtilsName.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.deepOrangeAccent.withOpacity(0.99),
                          fontSize: Get.height * 0.06,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  AppSpace(height: Get.height * 0.02),
                  Text(
                    AppUtilsName.welcome,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.99),
                      fontSize: Get.height * 0.05,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
