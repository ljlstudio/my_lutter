import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';


class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Obx(() => Text(
          controller.welcomeMessage.value,
          style: const TextStyle(fontSize: 24),
        )),
      ),
    );
  }
}