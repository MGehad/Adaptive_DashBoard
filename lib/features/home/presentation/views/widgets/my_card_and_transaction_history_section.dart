import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
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
          ExpandablePageView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: List.generate(
              cardModels.length,
              (index) => MyCard(
                cardModel: cardModels[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
