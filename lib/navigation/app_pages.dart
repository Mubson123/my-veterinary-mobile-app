import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../binding/animal_binding.dart';
import '/binding/state_binding.dart';
import '/binding/person_binding.dart';
import '/navigation/routes.dart';
import '/page/app-pages.dart';

abstract class AppPages {
  static List<GetPage<Widget>> get getPages => _pages;

  static final List<GetPage<Widget>> _pages = [
    GetPage(
      name: Routes.splashPage,
      page: () => const SplashPage(),
      binding: AppStateBindings(),
      transition: Transition.native,
    ),
    GetPage(
      name: Routes.personFirstRegistrationPage,
      page: () => const PersonFirstRegistrationPage(),
      binding: PersonBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.personSecondRegistrationPage,
      page: () => const PersonSecondRegistrationPage(),
      binding: PersonBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.animalFirstRegistrationPage,
      page: () => const AnimalFirstRegistrationPage(),
      binding: AnimalBindings(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.animalSecondRegistrationPage,
      page: () => const AnimalSecondRegistrationPage(),
      binding: AnimalBindings(),
      transition: Transition.noTransition,
    )
  ];
}
