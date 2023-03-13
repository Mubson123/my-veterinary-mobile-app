import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/navigation/routes.dart';
import '../widgets/double_button.dart';
import '/utils/form_builder_name.dart';
import '/widgets/space.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
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
          restorationId: 'welcome_page',
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    AppSpace(height: size.height * 0.2),
                    Text(
                      AppUtilsName.title,
                      style: TextStyle(
                        color: Colors.deepOrangeAccent.withOpacity(0.99),
                        fontSize: size.height * 0.06,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    AppSpace(height: size.height * 0.2),
                    DoubleButton(
                      firstButtonText: AppUtilsName.pRegistry,
                      secondButtonText: AppUtilsName.login,
                      firstRoute: () =>
                          Get.toNamed(Routes.personFirstRegistrationPage),
                      secondRoute: () => Get.toNamed(Routes.login),
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
