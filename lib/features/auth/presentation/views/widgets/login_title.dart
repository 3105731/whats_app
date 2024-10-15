import 'package:flutter/cupertino.dart';

import '../../../../../core/themes/strings.dart';
import '../../../../../core/themes/styles.dart';

class loginTitle extends StatelessWidget {
  const loginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return   Text(
      AppStrings.english['loginDescribe']!,
      style: Styles.textStyle24_2,
      textAlign: TextAlign.center,
    );
  }
}
