import 'package:chat_app/ui/pages/auth/login_or_register_page.dart';
import 'package:chat_app/ui/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const LoginOrRegisterPage();
        } else {
          return const HomePage();
        }
      },
    );
  }
}
