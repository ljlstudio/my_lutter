
import 'package:get/get.dart';

import '../../../data/local/storage_service.dart';
import '../../../data/repositories/auth_repository.dart';
import '../../routes/app_routes.dart';



class AuthController extends GetxController {
  final AuthRepository _repo;
  final StorageService _storage;

  AuthController(this._repo, this._storage);

  final isLoading = false.obs;

  Future<void> login(String email, String password) async {
    try {
      isLoading(true);
      final response = await _repo.login(email, password);
      await _storage.saveToken(response['token']);
      Get.offAllNamed(Routes.MAIN);
    } catch (e) {
      Get.snackbar('Error', 'Login failed');
    } finally {
      isLoading(false);
    }
  }
}