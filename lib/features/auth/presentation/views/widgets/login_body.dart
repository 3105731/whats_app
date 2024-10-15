import 'package:chat_app_intern/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/login_button.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/login_title.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/logo.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/register_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/home_page.dart';

class loginBody extends StatefulWidget {

   loginBody({super.key});

  @override
  State<loginBody> createState() => _loginBodyState();
}

class _loginBodyState extends State<loginBody> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  var fromKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: fromKey,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              const SizedBox(height: 20,),
              const loginTitle(),
              const SizedBox(height: 20,),
              emailField(emailController: emailController),
              const SizedBox(height: 20,),
              passwordField(
                  passwordController: passwordController,
                  toogleVisibility: (){
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  isPasswordVisibility: isPasswordVisible,
              ),
              const SizedBox(height: 50,),
         loginButton(
             emailController: emailController,
             passwordController: passwordController,
             onSuccess: (){
               Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context) => const HomePage(),
               ),
               );
             }),
              const SizedBox(height: 20,),
              const registerRow(),
            ],
          ),
        ),
      ),
    );
  }
}
