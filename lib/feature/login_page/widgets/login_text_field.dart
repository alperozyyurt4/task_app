part of '../login_view.dart';

class _LoginTextField extends StatelessWidget {
  const _LoginTextField({
    required String hintText,
    required TextEditingController controller,
    bool obscureText = false,
    VoidCallback? onPressed,
    TextInputType keyboardType = TextInputType.text,
    super.key,
  })  : _hintText = hintText,
        _controller = controller,
        _obscureText = obscureText,
        _onPressed = onPressed,
        _keyboardType = keyboardType;

  final String _hintText;
  final VoidCallback? _onPressed;
  final TextEditingController _controller;
  final bool _obscureText;
  final TextInputType _keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: _keyboardType,
        obscureText: _obscureText,
        controller: _controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: _onPressed != null
              ? IconButton(
                  onPressed: _onPressed,
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                  ),
                )
              : null,
          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          hintText: _hintText,
          hintStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
