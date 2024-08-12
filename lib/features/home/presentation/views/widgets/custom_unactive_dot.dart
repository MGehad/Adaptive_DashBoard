import 'package:flutter/material.dart';

class CustomUnActiveDot extends StatelessWidget {
  const CustomUnActiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(12.0),
      ),
      duration: const Duration(milliseconds: 600),
    );
  }
}
