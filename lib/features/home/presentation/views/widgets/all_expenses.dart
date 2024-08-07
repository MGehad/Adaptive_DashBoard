import 'package:flutter/material.dart';
import '../../../../../core/utlis/images.dart';
import 'all_expenses_header.dart';
import 'all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: AllExpensesItem(
                  title: "Balance",
                  svgImage: Images.imagesBalance,
                  color: Color(0xff4EB7F2),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: AllExpensesItem(
                  title: "Income",
                  svgImage: Images.imagesIncome,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: AllExpensesItem(
                  title: "Expenses",
                  svgImage: Images.imagesExpenses,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
