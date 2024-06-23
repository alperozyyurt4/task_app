import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/core/app_keys.dart';
import 'package:task_app/core/navi_func.dart';
import 'package:task_app/feature/login_page/login_keys.dart';
import 'package:task_app/feature/login_page/login_mixin.dart';
import 'package:task_app/feature/login_page/login_padding.dart';
import 'package:task_app/feature/login_page/login_provider.dart';
import 'package:task_app/feature/sign_up_page/sign_up_view.dart';
import 'package:task_app/feature/widgets/create_button.dart';

part './widgets/login_sign_text_button.dart';
part './widgets/login_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with LoginMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: Scaffold(
        backgroundColor: AppKeys.appBlueColor, // Background color
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: LoginPadding.low.value,
            vertical: LoginPadding.high.value,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(AppKeys.loginTitle, style: LoginKeys.loginStyle),

                const SizedBox(height: 30),

                //* Email field
                _LoginTextField(
                    controller: emailController,
                    hintText: AppKeys.emailText,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false),

                const SizedBox(height: 20),

                //* Password field
                Consumer<LoginProvider>(
                  builder: (context, provider, child) {
                    return _LoginTextField(
                        hintText: AppKeys.passwordText,
                        controller: passwordController,
                        obscureText: provider.isObscure,
                        keyboardType: TextInputType.visiblePassword,
                        onPressed: provider.toggleObscure);
                  },
                ),

                const SizedBox(height: 20),

                //* Login button
                CreateButton(
                    text: AppKeys.loginTitle,
                    onPressed: () {
                      NaviFunc(context, page: const Placeholder());
                    }),

                const SizedBox(height: 20),

                //* Don't have an account? Sign up
                Padding(
                  padding: LoginPadding.low.paddingVertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: LoginPadding.low.value),
                          child: const Text(LoginKeys.dontAccTitle, style: LoginKeys.dontAccStyle)),
                      _SignUpTextButton(onPressed: () => NaviFunc(context, page: const SignUpView())),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
