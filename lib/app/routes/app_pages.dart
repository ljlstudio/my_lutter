
import 'package:get/route_manager.dart';
import '../../splash_page.dart';
import '../bindings/auth_binding.dart';
import '../bindings/main_binding.dart';
import '../modules/auth/auth_page.dart';
import '../modules/main/main_page.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => const SplashPage()),
    GetPage(
      name: Routes.LOGIN,
      page: () => AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => MainPage(),
      binding: MainBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}