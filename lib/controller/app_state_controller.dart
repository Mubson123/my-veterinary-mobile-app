import 'package:get/get.dart';
import '/controller/app_media_controller.dart';
import '/controller/person_controller.dart';
import 'animal_controller.dart';
import 'login_controller.dart';

class AppStateController extends GetxController {
  final loginController = LoginController();
  final personController = PersonController();
  final animalController = AnimalController();
  final appMediaController = AppMediaController();
}
