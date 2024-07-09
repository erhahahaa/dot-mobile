import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const Placeholder(),
    );
  }
}
