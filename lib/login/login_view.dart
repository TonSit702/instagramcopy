import 'package:flutter/material.dart';
import 'auth_field.dart';
import 'custom_button.dart';
import 'package:instagramcopy/homeview/homeview.dart';

class InstagramLoginView extends StatefulWidget {
  const InstagramLoginView({super.key});

  @override
  State<InstagramLoginView> createState() => _InstagramLoginViewState();
}

class _InstagramLoginViewState extends State<InstagramLoginView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Example user credentials
  final String _exampleUsername = 'admin';
  final String _examplePassword = '123456';

  void _authenticate() {
    final enteredUsername = _usernameController.text.trim();
    final enteredPassword = _passwordController.text;

    if (enteredUsername == _exampleUsername && enteredPassword == _examplePassword) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const InstagramHomeView(),
    ),
  );
} else {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Invalid username or password.'),
      backgroundColor: Colors.red,
    ),
  );
}

  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'English',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: 'Continue with Facebook',
                  icon: Icons.facebook,
                  backgroundColor: Color(0xFF1877F2),
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                const Text('OR',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(height: 20),
                AuthField(
                  hintText: 'Phone No., Username, Email',
                  controller: _usernameController,
                ),
                const SizedBox(height: 12),
                AuthField(
                  hintText: 'Password',
                  isPassword: true,
                  controller: _passwordController,
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Login',
                  onPressed: _authenticate,
                  backgroundColor: Colors.blue.shade800,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue),
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
