import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/models/all_expenses_item_model.dart';
import '../../../../../core/utlis/styles.dart';

class AllExpensesUnActiveItem extends StatelessWidget {
  const AllExpensesUnActiveItem({
    super.key,
    required this.model,
  });

  final AllExpensesItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 56),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(.1),
                    maxRadius: 28,
                    child: SvgPicture.asset(
                      model.svgImage,
                      color: const Color(0xff4EB7F2),
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xff064061),
                size: 24,
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              model.title,
              style: Styles.textStyleSemiBold16(context),
            ),
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child:
                  Text(model.date, style: Styles.textStyleRegular14(context))),
          const SizedBox(
            height: 14,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child:
                  Text(model.price, style: Styles.textStyleSemiBold24(context)))
        ],
      ),
    );
  }
}
