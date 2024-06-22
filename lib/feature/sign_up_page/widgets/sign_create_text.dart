part of '../sign_up_view.dart';

class _CreateAccountText extends StatelessWidget {
  const _CreateAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SignUpPadding.medium.value),
      child: Text(
        SignUpeys.headerTitle,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
