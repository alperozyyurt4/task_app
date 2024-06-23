import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool _isObscure = true;

  bool get isObscure => _isObscure;

  void toggleObscure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }
}
