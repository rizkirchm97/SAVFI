
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:savfi/core/helper/resources.dart';
import 'package:savfi/features/auth/data/datasources/network/dio/dio_client.dart';

abstract class Datasources {
  Future<void> local();
  Future<Response<dynamic>> network(dynamic data);
  Future<void> cache();
}