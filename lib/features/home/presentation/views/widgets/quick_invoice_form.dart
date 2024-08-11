import 'package:flutter/material.dart';

import 'textWithTextField.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TextWithTextField(
                    txt: "Customer name",
                    textField: "Type customer name")),
            SizedBox(width: 16),
            Expanded(
                child: TextWithTextField(
                    txt: "Customer Email",
                    textField: "Type customer email")),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: TextWithTextField(
                    txt: "Item name", textField: "Type customer name")),
            SizedBox(width: 16),
            Expanded(
                child: TextWithTextField(
                    txt: "Item mount", textField: "USD")),
          ],
        ),
      ],
    );
  }
}
