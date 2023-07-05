import 'package:dio/dio.dart';
import 'package:savfi/core/helper/resources.dart';
import 'package:savfi/features/auth/domain/entities/login/send_login_entity.dart';

abstract class LoginRepository {
  /// [sendLogin] functionality is for check whether the Phone Number
  /// has been registered or not
  /// if yes, it will be redirect to [OtpPage]
  Future<Resources<Response>> sendLogin({required SendLoginEntity data});
}