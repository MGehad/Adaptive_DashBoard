import 'package:flutter/material.dart';
import '../../../../../core/utlis/styles.dart';
import 'latest_transaction_row.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({
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
          const QuickInvoiceHeader(),
          const SizedBox(height: 24.0),
          Text(
            "Latest Transaction",
            style: Styles.textStyleMedium16,
          ),
          const SizedBox(height: 12.0),
          const SizedBox(
            height: 74,
            child: LatestTransactionRow(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(
              color: Color(0xffF1F1F1),
            ),
          ),
        ],
      ),
    );
  }
}
