import 'package:flutter/material.dart';
import 'package:task_app/feature/sign_up_page/sign_up_view.dart';

mixin SignUpMixin on State<SignUpView> {
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
