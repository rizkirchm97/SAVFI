import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/auth/presentation/bloc/login_bloc/login_cubit.dart';
import 'package:savfi/features/auth/presentation/bloc/otp_bloc/otp_cubit.dart';
import 'package:savfi/features/auth/presentation/bloc/register_bloc/register_cubit.dart';
import 'package:savfi/features/auth/presentation/pages/login/login_page.dart';
import 'package:savfi/features/auth/presentation/pages/otp/otp_page.dart';
import 'app_module.dart' as di;

import 'app_module.dart';
import 'features/auth/presentation/pages/register/register_page.dart';

Future<void> main() async {
  await di.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Savfi App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const OtpPage(),
      ),
    );
  }

  List<BlocProvider>_getProviders() => [
    BlocProvider<LoginCubit>(create: (_) => sl<LoginCubit>()),
    BlocProvider<OtpCubit>(create: (_) => sl<OtpCubit>()),
    BlocProvider<RegisterCubit>(create: (_) => sl<RegisterCubit>()),
  ];
}
