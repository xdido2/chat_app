import 'package:chat_app/ui/components/my_button.dart';
import 'package:chat_app/ui/components/my_textfield.dart';
import 'package:chat_app/ui/services/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback toggleSwitch;

  const RegisterPage({super.key, required this.toggleSwitch});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();

  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  final TextEditingController _confirmPasswordTextEditingController =
      TextEditingController();

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
    );
  }

  void signUp() async {
    final auth = AuthService();
    final String email = _emailTextEditingController.text;
    final String password = _passwordTextEditingController.text;
    final String confirmPassword = _confirmPasswordTextEditingController.text;
    if (password == confirmPassword) {
      try {
        await auth.signUpWithEmailAndPassword(email, password);
      } catch (e) {
        showErrorMessage(e.toString());
      }
    } else {
      showErrorMessage('Password don\'t match!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.app_registration,
                  size: 60,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 50),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextfield(
                  obscureText: false,
                  hintText: 'Email',
                  controller: _emailTextEditingController,
                ),
                const SizedBox(height: 15),
                MyTextfield(
                  obscureText: true,
                  hintText: 'Password',
                  controller: _passwordTextEditingController,
                ),
                const SizedBox(height: 25),
                MyTextfield(
                  obscureText: true,
                  hintText: 'Confirm password',
                  controller: _confirmPasswordTextEditingController,
                ),
                const SizedBox(height: 25),
                MyButton(onPressed: signUp, text: 'Register'),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.toggleSwitch,
                      child: Text(
                        'Login now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
