import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utlis/images.dart';
import 'card_name.dart';
import 'card_numbers.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 84 / 43,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          image: const DecorationImage(
            image: AssetImage(Images.imagesCardBackground),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CardName(),
                  SvgPicture.asset(Images.imagesGallery)
                ],
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: CardNumbers(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
