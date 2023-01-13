import 'package:get/get.dart';
import '/controller/person_controller.dart';
import '/data/person/person_provider.dart';
import '/data/person/person_repository.dart';

class PersonBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IPersonProvider>(() => PersonProvider());
    Get.lazyPut<IPersonRepository>(
        () => PersonRepository(provider: Get.find()));
    Get.lazyPut(() => PersonController());
  }
}
