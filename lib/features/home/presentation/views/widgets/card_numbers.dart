import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';

class CardNumbers extends StatelessWidget {
  const CardNumbers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "0918 8124 0042 8129",
          style: Styles.textStyleSemiBold24.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "12/20 - ",
              style: Styles.textStyleRegular16.copyWith(color: Colors.white),
            ),
            Text(
              "124",
              style: Styles.textStyleRegular16.copyWith(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
