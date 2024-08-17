import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';

class CardNumbers extends StatelessWidget {
  const CardNumbers({
    super.key,
    required this.cardNumber,
    required this.cardPassword,
    required this.cardDate,
  });

  final String cardNumber;
  final String cardPassword;
  final String cardDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          cardNumber,
          style:
              Styles.textStyleSemiBold24(context).copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$cardDate - ",
              style: Styles.textStyleRegular16(context)
                  .copyWith(color: Colors.white),
            ),
            Text(
              cardPassword,
              style: Styles.textStyleRegular16(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
