import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utlis/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.svgImage,
    required this.title,
    required this.subtitle,
  });

  final String svgImage;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          svgImage,
          fit: BoxFit.fill,
          width: 32,
          height: 32,
        ),
        title: Text(
          title,
          style: Styles.textStyleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: Styles.textStyleRegular12,
        ),
      ),
    );
  }
}
