import 'package:get/get.dart';
import '/controller/welcome_controller.dart';


class WelcomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}