import 'package:flutter/material.dart';

import 'custom_active_dot.dart';
import 'custom_unactive_dot.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return const CustomActiveDot();
    }
    return const CustomUnActiveDot();
  }
}
