import 'package:equatable/equatable.dart';

class SendLoginEntity extends Equatable {
  final String? userPhoneNumber;

  const SendLoginEntity({this.userPhoneNumber});

  @override
  List<Object?> get props =>[userPhoneNumber];

}