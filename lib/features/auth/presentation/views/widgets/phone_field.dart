import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared widgets/default_text.dart';
import '../../../../../core/themes/strings.dart';

class phoneField extends StatelessWidget {
  final TextEditingController phoneController;
  const phoneField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return  defaultText(
        type: TextInputType.phone,
        label:  AppStrings.english['phoneLabel']!,
        hint: AppStrings.english['phoneHint']!,
        prefix: Icons.person,
        controller: phoneController,
        validate: (value){
          if(value!.isEmpty){
            return "You have to enter your phone number";
          }else {
            return null;
          }
        }


    );
  }
}
