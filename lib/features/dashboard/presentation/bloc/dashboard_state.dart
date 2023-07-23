
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class DashboardState extends Equatable {


  @override
  List<Object?> get props => [];
}

class InitialDashboardState extends DashboardState {}
