import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared widgets/default_text.dart';
import '../../../../../core/themes/strings.dart';

class emailField extends StatelessWidget {
  final TextEditingController emailController;
  const emailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return  defaultText(
      type: TextInputType.emailAddress,
      label:  AppStrings.english['emailLabel']!,
      hint: AppStrings.english['hintLabel']!,
      prefix: Icons.email_outlined,
      controller: emailController,
      validate: (value){
        if(value!.isEmpty){
          return "Email must not be empty";
        }else {
          return null;
        }
      }


    );
  }
}
