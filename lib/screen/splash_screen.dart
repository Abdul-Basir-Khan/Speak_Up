import 'dart:async';
import 'package:flutter/material.dart';

import 'auth/landing_page.dart';

class MyAnimatedImageScreen extends StatefulWidget {
  const MyAnimatedImageScreen({super.key});

  @override
  _MyAnimatedImageScreenState createState() => _MyAnimatedImageScreenState();
}

class _MyAnimatedImageScreenState extends State<MyAnimatedImageScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage()),
        //ConversationScreen()),
      ),
    );
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF420854),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Image.asset(
                'assets/images/splash_image-removebg-preview.png',
                width: 200,
                height: 200,
              ),
            );
          },
        ),
      ),
    );
  }
}
