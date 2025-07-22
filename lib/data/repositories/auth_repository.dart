import 'package:get/get.dart';

import '../network/api_service.dart';

class AuthRepository {
  final ApiService _apiService = Get.find();

  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await _apiService.post('/auth/login', data: {
      'email': email,
      'password': password
    });
    return response.data;
  }
}