import 'package:flutter/cupertino.dart';

import '../../../../../core/constants/asset_images.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.topCenter,
      child: Image.asset(
        AssetImages.logo,
        width: 300,
        height: 250,
      ) ,
    );
  }
}
