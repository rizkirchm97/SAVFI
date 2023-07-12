import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/auth/presentation/bloc/register_bloc/register_state.dart';
import 'package:savfi/features/auth/presentation/widgets/register_form.dart';

import '../../bloc/register_bloc/register_cubit.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return const Padding(
          padding: EdgeInsets.only(top: 100, left: 20, right: 20),
          child: RegisterForm(),
        );
      },
    );
  }
}
