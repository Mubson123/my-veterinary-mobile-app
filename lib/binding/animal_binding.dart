import 'package:get/get.dart';
import '/controller/animal_controller.dart';
import '/data/animal/animal_provider.dart';
import '../data/animal/animal_repository.dart';

class AnimalBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IAnimalProvider>(() => AnimalProvider());
    Get.lazyPut<IAnimalRepository>(
        () => AnimalRepository(provider: Get.find()));
    Get.lazyPut(() => AnimalController());
  }
}
