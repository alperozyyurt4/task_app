import 'package:flutter/material.dart';

@immutable

/// Custom sign up keys
final class SignUpeys {
  const SignUpeys._();

  /// Strings
  static const headerTitle = 'Create\n your account';
  static const alreadyAccTitle = 'Already have account?';

  /// Controllers
  static const nameText = 'Name';
  static const emailText = 'Email Address';
  static const passwordText = 'Password';

  /// Icons
  static const personIcon = Icons.person_3_outlined;
  static const cameraIcon = Icons.camera_alt;

  /// Colors
  static const appBlueColor = Color(0xAA3f79ff);

  /// Buttons
  static const signUpButtonTitle = 'Sign Up';
  static const loginButtonTitle = 'Login';
}
