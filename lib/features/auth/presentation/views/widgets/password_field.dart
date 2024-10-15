import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared widgets/default_text.dart';
import '../../../../../core/themes/strings.dart';

class passwordField extends StatelessWidget {
  final TextEditingController passwordController;
  final VoidCallback toogleVisibility;
 final bool isPasswordVisibility;

  const passwordField({
    super.key,
    required this.passwordController,
    required this.toogleVisibility,
    required this.isPasswordVisibility});

  @override
  Widget build(BuildContext context) {
    return defaultText(
        type: TextInputType.visiblePassword,
        label:  AppStrings.english['passwordLabel']!,
        hint: AppStrings.english['passwordHint']!,
        prefix: Icons.lock,
        isObscure: !isPasswordVisibility,
        suffix: isPasswordVisibility? Icons.visibility :
        Icons.visibility_off,
        controller: passwordController,
        pressed: toogleVisibility,
        validate: (value)
    {
      if (value!.isEmpty) {
        return "Password must not be empty";
      } else {
        return null;
      }
    }
    );
  }
}

