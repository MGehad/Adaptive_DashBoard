import 'package:adaptive_dashboard/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class TextWithTextField extends StatelessWidget {
  const TextWithTextField(
      {super.key, required this.txt, required this.textField});

  final String txt;
  final String textField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt,
          style: Styles.textStyleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          maxLines: 1,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20.0),
            hintText: textField,
            hintStyle: Styles.textStyleRegular16
                .copyWith(color: const Color(0xffAAAAAA)),
            fillColor: Colors.grey.withOpacity(.08),
            filled: true,
            border: buildOutlineInputBorder(),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
          ),
        )
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(.08),
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
