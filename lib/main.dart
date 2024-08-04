import 'package:flutter/material.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(const AdaptiveDashBoardApp());
}

class AdaptiveDashBoardApp extends StatelessWidget {
  const AdaptiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomeView(),
    );
  }
}
