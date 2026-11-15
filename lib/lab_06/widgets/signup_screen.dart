import 'package:flutter/material.dart';

import 'dialogs.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                const Center(child: FlutterLogo(size: 80)),
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Name:'),
                const SizedBox(height: 4),
                const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12),
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
                  child: ElevatedButton(
                    onPressed: () => showNotImplementedDialog(context),
                    child: const Text('Sign up'),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Back'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
