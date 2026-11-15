import 'package:flutter/material.dart';

import 'dialogs.dart';
import 'reset_password_screen.dart';
import 'signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: FlutterLogo(size: 100)),
                const SizedBox(height: 24),
                const Text('Email:'),
                const SizedBox(height: 4),
                const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12),
                const Text('Password:'),
                const SizedBox(height: 4),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: const Text('Sign up'),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => showNotImplementedDialog(context),
                        child: const Text('Login'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ResetPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text('Reset password'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
