import 'package:chat_app_intern/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:  HomeBody(),
      ),
    );
  }
}