
import 'package:dio/dio.dart';
import 'package:savfi/features/auth/data/DTO/login/login_dto.dart';

abstract class DioClient {
  Future<Response<dynamic>> postSendLogin(SendLoginDTO sendLoginDTO);
}

class DioClientImpl extends DioClient {
  late Dio _dio;
  late Response response;

  DioClientImpl({required Dio dio}) {
    _dio = dio;
  }

  @override
  Future<Response<dynamic>> postSendLogin(SendLoginDTO sendLoginDTO) async {
    response = await _dio.get(
      '',
      options: Options(
        responseType: ResponseType.json,
      ),
    );

    return response;
  }
}
