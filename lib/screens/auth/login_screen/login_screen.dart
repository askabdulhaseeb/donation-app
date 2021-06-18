import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Login Scree'),
      ),
    );
  }
}
