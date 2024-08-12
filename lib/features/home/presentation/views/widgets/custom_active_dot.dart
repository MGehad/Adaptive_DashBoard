import 'package:flutter/material.dart';

class CustomActiveDot extends StatelessWidget {
  const CustomActiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8.0,
      width: 32.0,
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      duration: const Duration(milliseconds: 600),
    );
  }
}
