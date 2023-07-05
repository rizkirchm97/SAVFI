
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:savfi/core/helper/resources.dart';
import 'package:savfi/features/auth/data/datasources/network/dio/dio_client.dart';

abstract class Datasources {
  Future<void> local();
  Future<Response<dynamic>> network(dynamic data);
  Future<void> cache();
}

class DataSourcesImpl extends Datasources {
  late final DioClient _dioClient;
  
  DataSourcesImpl(this._dioClient);
  
  @override
  Future<void> cache() {
    throw UnimplementedError();
  }

  @override
  Future<void> local() {
    throw UnimplementedError();
  }

  @override
  Future<Response<dynamic>> network(dynamic data) async {
    final result = await _dioClient.postSendLogin(data);
    return result;
  }

}