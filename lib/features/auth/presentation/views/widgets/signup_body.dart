import 'package:chat_app_intern/features/auth/presentation/views/widgets/login_raw.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/register_row.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/signup_button.dart';
import 'package:chat_app_intern/features/auth/presentation/views/widgets/signup_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/home_page.dart';
import 'email_field.dart';
import 'login_button.dart';
import 'login_title.dart';
import 'logo.dart';
import 'name_field.dart';

class singUpBody extends StatefulWidget {
  const singUpBody({super.key});

  @override
  State<singUpBody> createState() => _singUpBodyState();
}

class _singUpBodyState extends State<singUpBody> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
              Logo(),
              SizedBox(height: 20,),
              signUpTitle(),
              SizedBox(height: 20,),
              nameField(nameController: nameController,),
              SizedBox(height: 20,),
              emailField(emailController: emailController),
              SizedBox(height: 20,),
              phoneField(phoneController: phoneController),
              SizedBox(height: 20,),
              passwordField(
                passwordController: passwordController,
                toogleVisibility: (){
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                isPasswordVisibility: isPasswordVisible,
              ),
              SizedBox(height: 50,),
              SignUpButton(
                  nameController: nameController,
                  emailController: emailController,
                  phoneController: phoneController,
                  passwordController: passwordController,

                  onSuccess: (){
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage(),
                      ),
                    );
                  }),
              SizedBox(height: 20,),
              loginRow(),
            ],
          ),
        ),
      ),
    );
  }
}
