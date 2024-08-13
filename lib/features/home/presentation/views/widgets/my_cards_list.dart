import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'my_card.dart';

class MyCardsList extends StatelessWidget {
  const MyCardsList({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: List.generate(
        cardModels.length,
        (index) => MyCard(
          cardModel: cardModels[index],
        ),
      ),
    );
  }
}
