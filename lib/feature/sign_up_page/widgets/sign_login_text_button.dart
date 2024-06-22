part of '../sign_up_view.dart';

class _LoginTextButton extends StatelessWidget {
  const _LoginTextButton({super.key, required VoidCallback onPressed}) : _onPressed = onPressed;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateColor.transparent,
        splashFactory: NoSplash.splashFactory,
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        minimumSize: WidgetStateProperty.all<Size>(Size.zero),
      ),
      onPressed: _onPressed,
      child: const Text(
        SignUpeys.loginButtonTitle,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
