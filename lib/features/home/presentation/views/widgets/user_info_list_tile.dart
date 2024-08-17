import 'package:adaptive_dashboard/core/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utlis/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.model,
    this.margin,
  });

  final UserInfoModel model;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            model.svgImage,
            fit: BoxFit.fill,
            width: 32,
            height: 32,
          ),
          title: Text(
            model.title,
            style: Styles.textStyleSemiBold16(context),
          ),
          subtitle: Text(
            model.subtitle,
            style: Styles.textStyleRegular12(context),
          ),
        ),
      ),
    );
  }
}
