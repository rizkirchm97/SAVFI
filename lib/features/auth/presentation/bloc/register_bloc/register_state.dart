
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class RegisterState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialRegisterState extends RegisterState {}