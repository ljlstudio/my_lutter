import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';




class AuthPage extends GetView<AuthController> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            Obx(() => controller.isLoading.value
                ? const CircularProgressIndicator()
                : ElevatedButton(
              onPressed: () => controller.login(
                _emailController.text,
                _passwordController.text,
              ),
              child: const Text('Login'),
            )),
          ],
        ),
      ),
    );
  }
}