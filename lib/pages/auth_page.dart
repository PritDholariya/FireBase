import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/pages/home_page.dart';
import 'package:firebase_demo/pages/login_or_signup.dart';
// import 'package:firebase_demo/pages/login_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              //show a loading indicator while checking the authentication state
              return const CircularProgressIndicator();
            } else {
              if (snapshot.hasData) {
                //user is logged in, navigate to the home page
                return HomePage();
              } else {
                //user is not logged in, navigate to the login page
                return const LoginAndSignUp();
              }
            }
          }),
    );
  }
}
