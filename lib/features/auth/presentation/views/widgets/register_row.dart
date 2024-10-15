import 'package:chat_app_intern/features/auth/presentation/views/signup.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class registerRow extends StatelessWidget {
  const registerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account? ",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignUpScreen(),
          ),
          );
        },
            child: Text('Register Here',
              style: Styles.textStyle10,
            ))
      ],
    );
  }
}
