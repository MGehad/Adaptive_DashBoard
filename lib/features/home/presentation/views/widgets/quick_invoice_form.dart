import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';
import 'textWithTextField.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: TextWithTextField(
                    txt: "Customer name", textField: "Type customer name")),
            SizedBox(width: 16),
            Expanded(
                child: TextWithTextField(
                    txt: "Customer Email", textField: "Type customer email")),
          ],
        ),
        const SizedBox(height: 24),
        const Row(
          children: [
            Expanded(
                child: TextWithTextField(
                    txt: "Item name", textField: "Type customer name")),
            SizedBox(width: 16),
            Expanded(
                child: TextWithTextField(txt: "Item mount", textField: "USD")),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TextButton(
                style: buildButtonStyle(),
                onPressed: () {},
                child: Text(
                  "Add more details",
                  style: Styles.textStyleSemiBold18,
                ),
              ),
            ),
            const SizedBox(
              width: 24.0,
            ),
            Expanded(
              child: TextButton(
                style: buildButtonStyle().copyWith(
                  backgroundColor:
                      const WidgetStatePropertyAll(Color(0xff4EB7F2)),
                ),
                onPressed: () {},
                child: Text(
                  "Send Money",
                  style:
                      Styles.textStyleSemiBold18.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  ButtonStyle buildButtonStyle() {
    return ButtonStyle(
      shape: WidgetStatePropertyAll(
        ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      padding: const WidgetStatePropertyAll(EdgeInsets.all(24.0)),
    );
  }
}
