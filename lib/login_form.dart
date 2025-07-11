import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'register_form.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 36.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                // Avatar
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    child: Image.asset('assets/images/login.png', height: 120),
                  ),
                ),
                const SizedBox(height: 32),
                // Username/email/phone field
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone number, email or username',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Password field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // Login button
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Forgot password
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Forgot your login details? ',
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: 'Get help',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // Divider with OR
                Row(
                  children: [
                    const Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    const Expanded(child: Divider(thickness: 1)),
                  ],
                ),
                const SizedBox(height: 24),
                // Social login buttons centered
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 44,
                        width: 200,
                        child: OutlinedButton.icon(
                          icon: Image.asset(
                            'assets/images/google.png',
                            height: 20,
                          ),
                          label: const Text(
                            'Login with google',
                            style: TextStyle(color: Colors.blue),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 44,
                        width: 200,
                        child: OutlinedButton.icon(
                          icon: Image.asset(
                            'assets/images/facebook.png',
                            height: 20,
                          ),
                          label: const Text(
                            'Login with facebook',
                            style: TextStyle(color: Colors.blue),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                // Create account
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Doesn't have account? ",
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: 'Create new account',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const RegisterForm(),
                                    ),
                                  );
                                },
                        ),
                      ],
                    ),
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
