
import 'package:flutter/material.dart';
import 'package:savfi/features/splashscreen/presentation/widgets/splash_screen_control.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: SplashScreenControl(),
    );
  }
}
