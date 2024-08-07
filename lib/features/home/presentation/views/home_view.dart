import 'package:flutter/material.dart';
import 'widgets/adabtive_layout_widget.dart';
import 'widgets/desktop_layout.dart';
import 'widgets/mobile_layout.dart';
import 'widgets/tablet_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
