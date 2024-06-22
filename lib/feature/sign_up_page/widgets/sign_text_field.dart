part of '../sign_up_view.dart';

class _SignUpTextField extends StatelessWidget {
  const _SignUpTextField({
    required String hintText,
    required TextEditingController controller,
    bool obsocureText = false,
    TextInputType keyboardType = TextInputType.text,
    super.key,
  })  : _hintText = hintText,
        _controller = controller,
        _obsocureText = obsocureText,
        _keyboardType = keyboardType;

  final String _hintText;
  final TextEditingController _controller;
  final bool _obsocureText;
  final TextInputType _keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SignUpPadding.medium.paddingVertical,
      child: Padding(
        padding: SignUpPadding.medium.paddingHorizontal,
        child: TextField(
          cursorColor: Colors.white,
          controller: _controller,
          obscureText: _obsocureText,
          keyboardType: _keyboardType,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              hintText: _hintText,
              floatingLabelAlignment: FloatingLabelAlignment.start, // Etiketin yukarı kalkmasını sağlar
              fillColor: Colors.white,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              hintStyle: Theme.of(context).textTheme.headlineSmall),
        ),
      ),
    );
  }
}
