import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../binding/binding.dart';
import '../controller/app_state_controller.dart';
import '/navigation/routes.dart';
import '/page/app_pages.dart';

abstract class AppPages {
  static List<GetPage<Widget>> get getPages {
    Get.lazyPut(() => AppStateController());
    final controller = Get.find<AppStateController>();
    return [
      GetPage(
        name: Routes.splashPage,
        page: () => const SplashPage(),
        binding: WelcomeBindings(),
        transition: Transition.native,
      ),
      GetPage(
        name: Routes.personFirstRegistrationPage,
        page: () => PersonFirstRegistrationPage(
          controller: controller.personController,
        ),
        binding: PersonBindings(),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: Routes.personSecondRegistrationPage,
        page: () => PersonSecondRegistrationPage(
          controller: controller.personController,
        ),
        binding: AppStateBindings(),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: Routes.animalFirstRegistrationPage,
        page: () => AnimalFirstRegistrationPage(
          controller: controller.animalController,
        ),
        binding: AnimalBindings(),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: Routes.animalSecondRegistrationPage,
        page: () => AnimalSecondRegistrationPage(
          controller: controller.animalController,
        ),
        binding: AnimalBindings(),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: Routes.homePage,
        page: () => NavigationDelegatePage(
          controller: controller,
        ),
        binding: AppStateBindings(),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: Routes.welcomePage,
        page: () => const WelcomePage(),
        binding: PersonBindings(),
        transition: Transition.noTransition,
      ),
    ];
  }
}
