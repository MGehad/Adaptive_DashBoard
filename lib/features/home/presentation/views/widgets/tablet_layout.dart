import 'package:adaptive_dashboard/features/home/presentation/views/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 6, child: CustomDrawer()),
        Expanded(
          flex: 15,
          child: MobileLayout(),
        ),
      ],
    );
  }
}
