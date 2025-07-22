import 'package:get/get.dart';

import '../../data/local/storage_service.dart';
import '../../data/repositories/auth_repository.dart';
import '../modules/auth/auth_controller.dart';



class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController(
      Get.find<AuthRepository>(),
      Get.find<StorageService>(),
    ));
  }
}