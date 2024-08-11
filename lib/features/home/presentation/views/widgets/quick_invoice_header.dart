import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: Styles.textStyleSemiBold20,
        ),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.08),
            borderRadius: BorderRadius.circular(48.00),
          ),
          child: const Icon(
            Icons.add,
            size: 18,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
