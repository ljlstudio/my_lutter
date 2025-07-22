import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'explore_controller.dart';

class ExplorePage extends GetView<ExploreController> {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explore')),
      body: const Center(child: Text('Explore Content')),
    );
  }
}