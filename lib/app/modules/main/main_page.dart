import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_controller.dart';
import 'tabs/cart/cart_page.dart';
import 'tabs/explore/explore_page.dart';
import 'tabs/home/home_page.dart';
import 'tabs/profile/profile_page.dart';

class MainPage extends GetView<MainController> {
  final List<Widget> pages = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
    const ProfilePage(),
  ];

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // 设置为fixed类型,否则背景色不生效
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeTab,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
