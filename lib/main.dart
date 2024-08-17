import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const AdaptiveDashBoardApp(),
  ));
}

class AdaptiveDashBoardApp extends StatelessWidget {
  const AdaptiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
