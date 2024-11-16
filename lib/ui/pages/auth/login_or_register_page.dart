import 'package:chat_app/ui/pages/auth/login_page.dart';
import 'package:chat_app/ui/pages/auth/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showLoginPage = true;

  void toggleSwitch() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(toggleSwitch: toggleSwitch);
    } else {
      return RegisterPage(toggleSwitch: toggleSwitch);
    }
  }
}
