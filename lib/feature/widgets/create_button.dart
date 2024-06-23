import 'package:flutter/material.dart';
import 'package:task_app/core/app_keys.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({
    super.key,
    required String text,
    required VoidCallback onPressed,
  })  : _text = text,
        _onPressed = onPressed;

  final String _text;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _onPressed,
        child: Text(
          _text,
          style: const TextStyle(color: AppKeys.appBlueColor, fontSize: 18, fontWeight: FontWeight.w900),
        ));
  }
}
