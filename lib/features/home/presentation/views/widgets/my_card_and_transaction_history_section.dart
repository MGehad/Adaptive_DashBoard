import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utlis/styles.dart';
import 'dots_row.dart';
import 'my_card.dart';

class MyCardAndTransactionHistorySection extends StatefulWidget {
  const MyCardAndTransactionHistorySection({
    super.key,
  });

  @override
  State<MyCardAndTransactionHistorySection> createState() =>
      _MyCardAndTransactionHistorySectionState();
}

class _MyCardAndTransactionHistorySectionState
    extends State<MyCardAndTransactionHistorySection> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    pageController.addListener(
      () {
        setState(() {
          currentPage = pageController.page!.round();
        });
      },
    );
    super.initState();
  }

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
            controller: pageController,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: List.generate(
              cardModels.length,
              (index) => MyCard(
                cardModel: cardModels[index],
              ),
            ),
          ),
          const SizedBox(height: 19.0),
          DotsRow(selectedDot: currentPage),
        ],
      ),
    );
  }
}
