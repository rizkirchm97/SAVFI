
import 'package:get_it/get_it.dart';
import 'package:savfi/features/auth/presentation/bloc/login_bloc/login_cubit.dart';
import 'package:savfi/features/auth/presentation/bloc/otp_bloc/otp_cubit.dart';
import 'package:savfi/features/auth/presentation/bloc/register_bloc/register_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {


  // Bloc/Cubit
  sl.registerFactory(() => LoginCubit());
  sl.registerFactory(() => OtpCubit());
  sl.registerFactory(() => RegisterCubit());

}