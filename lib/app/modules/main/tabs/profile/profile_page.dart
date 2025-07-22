import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../data/local/storage_service.dart';

import '../../../../routes/app_routes.dart';
import 'profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.find<StorageService>().clear();
            Get.offAllNamed(Routes.LOGIN);
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}