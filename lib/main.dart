import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TinderLoginScreen(),
    );
  }
}

class TinderLoginScreen extends StatelessWidget {
  const TinderLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFE6A6A), Color(0xFFFF887D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            _buildLogo(),
            const SizedBox(height: 20),
            _buildTermsText(),
            const SizedBox(height: 30),
            _buildButton(Icons.apple, "SIGN IN APPLE"),
            const SizedBox(height: 15),
            _buildButton(Icons.facebook, "SIGN IN WITH FACEBOOK"),
            const SizedBox(height: 15),
            _buildButton(Icons.chat_bubble, "SIGN IN WITH PHONE NUMBER"),
            const SizedBox(height: 30),
            _buildTroubleSignIn(),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Column(
      children: const [
        Icon(Icons.whatshot, size: 80, color: Colors.white),
        Text(
          "tinder",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildTermsText() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        "By tapping Create Account or Sign In, you agree to our Terms. "
        "Learn how we process your data in your Privacy policy and Cookies Policy.",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white70, fontSize: 12),
      ),
    );
  }

  Widget _buildButton(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: 300,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            side: const BorderSide(color: Colors.white, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, color: Colors.white, size: 24),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center, // Texto centralizado
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTroubleSignIn() {
    return const Text(
      "Trouble Signing In?",
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
