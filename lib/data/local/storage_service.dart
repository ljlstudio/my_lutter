import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class StorageService extends GetxService {
  final _storage = GetStorage();

  Future<void> saveToken(String token) => _storage.write('auth_token', token);
  String? get token => _storage.read('auth_token');
  Future<void> clear() => _storage.erase();
}