import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savfi/features/splashscreen/presentation/bloc/splash_screen_cubit.dart';

import '../../../../app_module.dart';

class SplashScreenControl extends StatefulWidget {
  const SplashScreenControl({super.key});

  @override
  State<SplashScreenControl> createState() => _SplashScreenControlState();
}

class _SplashScreenControlState extends State<SplashScreenControl>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _bounceAnimation;
  late SplashScreenCubit _splashScreenCubit;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    _bounceAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _splashScreenCubit.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    _splashScreenCubit = BlocProvider.of(context);

    _splashScreenCubit.startSplash(3);
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: ScaleTransition(
              scale: _bounceAnimation,
              child: const Text(
                'savfi',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
