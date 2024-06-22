import 'package:flutter/material.dart';
import 'package:task_app/feature/sign_up_page/sign_up_keys.dart';

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
          style: const TextStyle(color: SignUpeys.appBlueColor, fontSize: 18, fontWeight: FontWeight.w900),
        ));
  }
}



// TODO: VoidCallBack onPress parametre olarak alınacak required