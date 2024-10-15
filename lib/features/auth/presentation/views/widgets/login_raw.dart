import 'package:chat_app_intern/features/auth/presentation/views/login_screen.dart';
import 'package:chat_app_intern/features/auth/presentation/views/signup.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class loginRow extends StatelessWidget {
  const loginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account? ",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen(),
            ),
          );
        },
            child: Text('Login Here',
              style: Styles.textStyle10,
            ))
      ],
    );
  }
}
