import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/calculator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1d2630),
      body: Calculator(),
    );
  }
}
