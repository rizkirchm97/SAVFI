
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class OtpState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialOtpState extends OtpState {}