import 'package:get/get.dart';
import '/controller/app_state_controller.dart';

class AppStateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppStateController());
  }

}