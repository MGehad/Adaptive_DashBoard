import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE5E5E5),
      child: const Row(
        children: [
          Expanded(flex: 3, child: CustomDrawer()),
          Expanded(flex: 7, child: SizedBox()),
          Expanded(flex: 6, child: SizedBox()),
        ],
      ),
    );
  }
}
