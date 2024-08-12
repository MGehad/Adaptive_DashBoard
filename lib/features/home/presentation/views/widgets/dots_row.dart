import 'package:flutter/material.dart';

import 'custom_dot.dart';

class DotsRow extends StatelessWidget {
  const DotsRow({
    super.key,
    required this.selectedDot,
  });

  final int selectedDot;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      3,
      (index) {
        return (index == 1)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomDot(isActive: selectedDot == index))
            : CustomDot(isActive: selectedDot == index);
      },
    ));
  }
}
