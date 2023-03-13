import 'package:get/get.dart';
import '../navigation/routes.dart';


class WelcomeController extends GetxController {
  @override
  void onReady() {
    Future.delayed( const Duration(milliseconds: 2700),() {
      Get.offAllNamed(Routes.welcomePage);
    });
    super.onReady();
  }
}