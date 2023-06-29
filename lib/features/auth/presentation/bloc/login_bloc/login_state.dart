import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class LoadedLoginState extends LoginState {
  late final int? response;

  @override
  List<Object?> get props => [response];
}

class SubmitLoginState extends LoginState {
  final int? phoneNumber;

  SubmitLoginState({this.phoneNumber});

  @override
  List<Object?> get props => [phoneNumber];
}