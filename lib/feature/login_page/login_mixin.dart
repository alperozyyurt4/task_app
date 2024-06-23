import 'package:flutter/material.dart';
import 'package:task_app/feature/login_page/login_view.dart';

mixin LoginMixin on State<LoginView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
