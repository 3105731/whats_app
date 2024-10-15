import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared widgets/default_text.dart';
import '../../../../../core/themes/strings.dart';

class nameField extends StatelessWidget {
  final TextEditingController nameController;
  const nameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return  defaultText(
        type: TextInputType.name,
        label:  AppStrings.english['nameLabel']!,
        hint: AppStrings.english['nameHint']!,
        prefix: Icons.person,
        controller: nameController,
        validate: (value){
          if(value!.isEmpty){
            return "You have to enter name";
          }else {
            return null;
          }
        }


    );
  }
}
