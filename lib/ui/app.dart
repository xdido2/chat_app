import 'package:chat_app/ui/pages/auth/auth_gate.dart';
import 'package:chat_app/ui/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: lightTheme,
    );
  }
}
