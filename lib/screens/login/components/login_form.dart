import 'package:flutter/material.dart';
import '../../schedule/schedule_screen.dart';
import 'forgot_password_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    // Mock login functionality
    print('Login attempted with:');
    print('Email: ${_emailController.text}');
    print('Password: ${_passwordController.text}');

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const ScheduleScreen(),
      ),
    );
  }

  void _navigateToForgotPassword() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ForgotPasswordScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        Text(
          'Log In',
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.indigoAccent,
          ),
        ),
        const SizedBox(height: 40),
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(fontSize: 30),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.indigo.shade100,
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _passwordController,
          obscureText: _obscurePassword,
          style: const TextStyle(fontSize: 30),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.indigo.shade100,
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
                size: 50,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: _navigateToForgotPassword,
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 50,
                color: Colors.indigoAccent,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _handleLogin,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigoAccent,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            'Log In',
            style: TextStyle(fontSize: 60),
          ),
        ),
      ],
    );
  }
}