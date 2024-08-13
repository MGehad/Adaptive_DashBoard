import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';
import 'dots_row.dart';
import 'my_cards_list.dart';
import 'transaction_history.dart';

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
      padding: const EdgeInsets.only(
        left: 24.0,
        bottom: 12.0,
        right: 24.0,
        top: 24.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My card",
            style: Styles.textStyleSemiBold20
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20.0),
          MyCardsList(pageController: pageController),
          const SizedBox(height: 18.0),
          DotsRow(selectedDot: currentPage),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(color: Color(0xffF1F1F1)),
          ),
          const TransactionHistory(),
        ],
      ),
    );
  }
}


