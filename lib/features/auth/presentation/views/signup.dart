import 'package:chat_app_intern/features/auth/presentation/views/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: singUpBody(),
      ),
    );
  }
}
