import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import 'user_info_list_tile.dart';

class LatestTransactionRow extends StatelessWidget {
  const LatestTransactionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoModels.map(
          (e) {
            return IntrinsicWidth(
              child: UserInfoListTile(model: e),
            );
          },
        ).toList(),
      ),
    );
  }
}
