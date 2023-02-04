import 'package:get/get.dart';
import 'package:myveterinary/style/my_veterinary_app_themes.dart';
import '/page/other/unknown_route_page.dart';
import 'navigation/routes.dart';
import '/navigation/app_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: GetMaterialApp(
        title: 'My Veterinary Flutter App',
        debugShowCheckedModeBanner: false,
        theme: MyVeterinaryAppThemes.light(),
        initialRoute: Routes.homePage,
        unknownRoute: GetPage(
          name: Routes.unknownPage,
          page: () => const UnknownRoutePage(),
        ),
        getPages: AppPages.getPages,
      ),
    );
  }
}
