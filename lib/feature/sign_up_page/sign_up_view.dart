import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:task_app/core/app_keys.dart';
import 'package:task_app/core/navi_func.dart';
import 'package:task_app/feature/login_page/login_view.dart';
import 'package:task_app/feature/sign_up_page/sign_up_keys.dart';
import 'package:task_app/feature/sign_up_page/sign_up_mixin.dart';
import 'package:task_app/feature/sign_up_page/sign_up_padding.dart';
import 'package:task_app/feature/widgets/create_button.dart';

part './widgets/sign_add_image.dart';
part './widgets/sign_create_text.dart';
part './widgets/sign_login_text_button.dart';
part './widgets/sign_text_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> with SignUpMixin {
  @override
  Widget build(BuildContext context) {
    double profilePicSize = context.sized.dynamicWidth(0.25);
    double camreIconSize = profilePicSize * 0.3;
    return Scaffold(
        backgroundColor: const Color(0xAA3f79ff),
        body: Padding(
          padding: EdgeInsets.only(top: SignUpPadding.high.value),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// Add image and profile picture
                _AddImage(
                    profilePicSize: profilePicSize,
                    camreIconSize: camreIconSize,
                    onTap: () {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(content: Text('Fonksiyonellik eklenecek')));
                    }),

                /// Create account text
                const _CreateAccountText(),

                /// Textfields

                Column(
                  children: [
                    _SignUpTextField(hintText: AppKeys.nameText, controller: nameController),
                    _SignUpTextField(hintText: AppKeys.emailText, controller: emailController),
                    _SignUpTextField(hintText: AppKeys.passwordText, controller: passwordController),
                  ],
                ),
                const SizedBox(height: 15),

                /// Sign Up button

                CreateButton(
                  text: AppKeys.signUpTitle,
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('Fonksiyonellik eklenecek')));
                  },
                ),

                // Already have account Login
                Padding(
                  padding: SignUpPadding.medium.paddingVertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(SignUpeys.alreadyAccTitle, style: TextStyle(color: Colors.white, fontSize: 16)),
                      _LoginTextButton(
                        onPressed: () => NaviFunc(context, page: const LoginView()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
