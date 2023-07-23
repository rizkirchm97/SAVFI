import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/auth/presentation/bloc/login_bloc/login_cubit.dart';
import 'package:savfi/features/auth/presentation/bloc/otp_bloc/otp_cubit.dart';
import 'package:savfi/features/auth/presentation/bloc/register_bloc/register_cubit.dart';
import 'package:savfi/features/auth/presentation/pages/login/login_page.dart';
import 'package:savfi/features/auth/presentation/pages/otp/otp_page.dart';
import 'package:savfi/features/dashboard/presentation/bloc/dashboard_cubit.dart';
import 'package:savfi/features/splashscreen/presentation/bloc/splash_screen_cubit.dart';
import 'package:savfi/features/splashscreen/presentation/pages/splash_screen_page.dart';
import 'package:savfi/features/splashscreen/presentation/widgets/splash_screen_control.dart';
import 'package:savfi/route/routes_imports.dart';
import 'app_module.dart' as di;

import 'app_module.dart';
import 'features/auth/presentation/pages/register/register_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      // navigation bar color
      statusBarColor: Colors.yellow,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark, // status bar color
    ));



    return MultiBlocProvider(
      providers: _getProviders(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Savfi App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }

  List<BlocProvider>_getProviders() => [
    BlocProvider<LoginCubit>(create: (_) => sl<LoginCubit>()),
    BlocProvider<OtpCubit>(create: (_) => sl<OtpCubit>()),
    BlocProvider<RegisterCubit>(create: (_) => sl<RegisterCubit>()),
    BlocProvider<SplashScreenCubit>(create: (_) => sl<SplashScreenCubit>()),
    BlocProvider<DashboardCubit>(create: (_) => sl<DashboardCubit>()),
  ];

   Future<Widget> buildSplash({
    required int durationInMilliseconds,
    required Function() initialWidget,
    required Function() nextWidget,
  }) async {

    return await Future.delayed(Duration(milliseconds: durationInMilliseconds), (){
      return initialWidget();
    }).then((_) => nextWidget());


  }
}
