import 'package:get/get.dart';
import '/navigation/routes.dart';

class AppStateController extends GetxController {

  @override
  void onReady() {
    Future.delayed( const Duration(milliseconds: 3000),() {
      Get.offAllNamed(Routes.firstRegistrationPage);
    });
    super.onReady();
  }
}