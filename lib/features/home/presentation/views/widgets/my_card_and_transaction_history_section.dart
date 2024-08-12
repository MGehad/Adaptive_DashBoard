import 'package:adaptive_dashboard/constants.dart';
import 'package:adaptive_dashboard/core/models/card_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utlis/styles.dart';
import 'my_card.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My card",
            style: Styles.textStyleSemiBold20,
          ),
          const SizedBox(height: 20.0),
          MyCard(
            cardModel: cardModels[0],
          )
        ],
      ),
    );
  }
}
