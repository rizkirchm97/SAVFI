
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/auth/presentation/pages/login/login_page.dart';
import 'package:savfi/features/splashscreen/presentation/bloc/splash_screen_cubit.dart';
import 'package:savfi/features/splashscreen/presentation/bloc/splash_screen_state.dart';
import 'package:savfi/features/splashscreen/presentation/widgets/splash_screen_control.dart';
import 'package:savfi/route/routes_imports.gr.dart';

@RoutePage()
class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocConsumer<SplashScreenCubit, SplashScreenState>(
      listener: (context, state) {
        if (state is CompleteSplashScreenState) {
          print('Inside Splash Screen Page');
          context.router.replace(const LoginRoute());
        }
      },
      builder: (context, state) {
        return const SplashScreenControl();
      },

    );
  }
}
