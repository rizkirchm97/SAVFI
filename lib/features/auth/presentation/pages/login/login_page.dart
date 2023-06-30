import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/auth/presentation/bloc/login_bloc/login_cubit.dart';
import 'package:savfi/features/auth/presentation/bloc/login_bloc/login_state.dart';
import 'package:savfi/features/auth/presentation/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return const Padding(
          padding: EdgeInsets.only(top: 100, left: 20, right: 20),
          child: LoginForm(),
        );
      },
    );
  }
}
