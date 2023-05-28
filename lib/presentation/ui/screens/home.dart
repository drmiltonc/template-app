import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String text = 'Home Screen';

    return const Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
