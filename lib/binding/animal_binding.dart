import 'package:get/get.dart';
import '/controller/animal_controller.dart';

class AnimalBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalController());
  }
}
