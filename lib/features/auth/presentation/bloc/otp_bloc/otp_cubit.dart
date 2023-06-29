
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/auth/presentation/bloc/otp_bloc/otp_state.dart';

class OtpCubit extends Cubit<OtpState> {

  OtpCubit() : super(InitialOtpState());

}