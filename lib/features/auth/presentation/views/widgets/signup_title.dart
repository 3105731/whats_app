import 'package:flutter/cupertino.dart';

import '../../../../../core/themes/strings.dart';
import '../../../../../core/themes/styles.dart';

class signUpTitle extends StatelessWidget {
  const signUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return   Text(
      AppStrings.english['signupDescribe']!,
      style: Styles.textStyle24_2,
      textAlign: TextAlign.center,
    );
  }
}
