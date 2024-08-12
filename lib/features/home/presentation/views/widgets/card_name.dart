import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';

class CardName extends StatelessWidget {
  const CardName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name card",
          style: Styles.textStyleRegular16.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          "Syah Bandi",
          style: Styles.textStyleSemiBold20.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
