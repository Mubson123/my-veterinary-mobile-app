import 'package:get/get.dart';
import '/controller/person_controller.dart';

class PersonBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonController());
  }
}
