import 'dart:io';
import 'package:chat_app_intern/core/themes/strings.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/asset_images.dart';
import '../../../../core/themes/styles.dart';
import '../../../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => const LoginScreen()),
      );
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetImages.logo,
                width: 375,
                height: 360,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 15),
              Text(
                AppStrings.english['AppName']!,
                style: Styles.textStyle10,
              ),
              const SizedBox(height: 150),
              Text(
                AppStrings.english['SplashDescribe']!,
                style: Styles.textStyle24,
              ),


            ],
          ),
        ),
      ),
    );
  }
}