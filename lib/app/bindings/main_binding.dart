import 'package:get/get.dart';

import '../modules/main/main_controller.dart';
import '../modules/main/tabs/cart/cart_controller.dart';
import '../modules/main/tabs/explore/explore_controller.dart';
import '../modules/main/tabs/home/home_controller.dart';
import '../modules/main/tabs/profile/profile_controller.dart';


class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ExploreController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => ProfileController());
  }
}