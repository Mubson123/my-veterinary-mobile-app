import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/binding/state_binding.dart';
import '/page/other/splash_page.dart';
import '/page/person/second_registration_page.dart';
import '/binding/person_binding.dart';
import '/navigation/routes.dart';
import '/page/person/first_registration_page.dart';

abstract class AppPages {
  static List<GetPage<Widget>> get getPages => _pages;

  static final List<GetPage<Widget>> _pages = [
    GetPage(
      name: Routes.splashPage,
      page: () => const SplashPage(),
      binding: AppStateBindings(),
      transition: Transition.native,
      transitionDuration: const Duration(milliseconds: 1),
    ),
    GetPage(
      name: Routes.firstRegistrationPage,
      page: () => const FirstRegistrationPage(),
      binding: PersonBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.secondRegistrationPage,
      page: () => const SecondRegistrationPage(),
      binding: PersonBindings(),
      transition: Transition.noTransition,
    )
  ];
}
