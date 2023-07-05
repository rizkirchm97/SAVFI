
import 'package:dio/src/response.dart';
import 'package:flutter/material.dart';
import 'package:savfi/core/helper/resources.dart';
import 'package:savfi/features/auth/data/datasources/data_sources.dart';
import 'package:savfi/features/auth/domain/entities/login/send_login_entity.dart';
import 'package:savfi/features/auth/domain/repositories/login/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {

  Datasources datasources;

  LoginRepositoryImpl(this.datasources);

  @override
  Future<Resources<Response>> sendLogin({required SendLoginEntity data}) async {
    final response = await datasources.network(data);
    try {
     return SuccessResource(data: response, status: DataStatus.SUCCESS);
    } catch(err) {
      return ErrorResource(errorMessage: err.toString());
    }
  }

}