import 'package:chat_app_intern/core/shared%20widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/themes/strings.dart';

class loginButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;

  const loginButton({super.key, required this.emailController, required this.passwordController, required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    return  CustomButton(
        text: AppStrings.english['login']!,
        func: (){
          if (!emailController.text.contains('@')) {
            displayToastMssg('Email address isn\'t valid', context);
          } else if (passwordController.text.isEmpty) {
            displayToastMssg('Password is mandatory', context);

          } else {

            onSuccess();

          }
        },
    );
  }

  void displayToastMssg(String msg, BuildContext context) {
    Fluttertoast.showToast(msg: msg);
  }
}
