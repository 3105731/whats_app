import 'package:chat_app_intern/core/shared%20widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/themes/strings.dart';

class SignUpButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final VoidCallback onSuccess;

  const SignUpButton({super.key, required this.emailController, required this.passwordController, required this.onSuccess, required this.nameController, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return  CustomButton(
      text:'Sign Up',
      func: (){
        if (!emailController.text.contains('@')) {
          displayToastMssg('Email address isn\'t valid', context);
        } else if (passwordController.text.isEmpty) {
          displayToastMssg('Password is mandatory', context);}

          else if (nameController.text.isEmpty) {
          displayToastMssg('Name is mandatory', context); }
        else if (phoneController.text.isEmpty) {
          displayToastMssg('Phone number is mandatory', context);
        } else if (phoneController.text.length < 11) {
          displayToastMssg('Phone number must be at least 11 digits', context);

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
