import 'package:firebase_demo/pages/login_page.dart';
import 'package:firebase_demo/pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginAndSignUp extends StatefulWidget {
  const LoginAndSignUp({super.key});

  @override
  State<LoginAndSignUp> createState() => _LoginAndSignUpState();
}

class _LoginAndSignUpState extends State<LoginAndSignUp> {
  bool isLogin = true;

  void togglePage() {
    setState(() {
    isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return LoginPage(
        onPressed: togglePage,
      );
    } else{
      return SignUp(
        onPressed: togglePage,
      );
    }
  }
}
