import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/auth/presentation/bloc/otp_bloc/otp_cubit.dart';
import 'package:savfi/features/auth/presentation/bloc/otp_bloc/otp_state.dart';
import 'package:savfi/features/auth/presentation/widgets/otp_form.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
        ),
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return BlocBuilder<OtpCubit, OtpState>(
      builder: (context, state) {
        return const Padding(
          padding: EdgeInsets.only(top: 100, left: 20, right: 20),
          child: OtpForm(),
        );
      },
    );
  }
}
