
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/auth/presentation/bloc/register_bloc/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(): super(InitialRegisterState());

}