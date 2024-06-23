part of '../login_view.dart';

class _SignUpTextButton extends StatelessWidget {
  const _SignUpTextButton({super.key, required VoidCallback onPressed}) : _onPressed = onPressed;
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
        AppKeys.signUpTitle,
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
