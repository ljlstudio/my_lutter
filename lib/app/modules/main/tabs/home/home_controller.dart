import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  var welcomeMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // 模拟数据加载
    Future.delayed(const Duration(seconds: 1), () {
      welcomeMessage.value = 'Welcome back, John!';
    });
  }
}