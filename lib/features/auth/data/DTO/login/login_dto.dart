
class SendLoginDTO {
  final String? userPhoneNumber;

  const SendLoginDTO({this.userPhoneNumber});

  @override
  List<Object?> get props =>[userPhoneNumber];
}