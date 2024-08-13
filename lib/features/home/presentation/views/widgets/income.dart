import 'package:flutter/material.dart';

import 'income_header.dart';

class Income extends StatelessWidget {
  const Income({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          IncomeHeader(),
        ],
      ),
    );
  }
}
