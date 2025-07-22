import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_routes.dart';
import 'data/local/storage_service.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      final storage = Get.find<StorageService>();
      // if (storage.token != null) {
      //   Get.offNamed(Routes.MAIN);
      // } else {
      //   Get.offNamed(Routes.LOGIN);
      // }
      Get.offNamed(Routes.MAIN);
    });

    return const Scaffold(
      body: Center(
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
