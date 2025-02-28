import 'package:dio/dio.dart';

class ApiCLient {
  final String _baseUrl;
  Dio _dio;
  String? _token;

  ApiCLient(this._baseUrl, this._dio);
  get baseUrl => _baseUrl;
  get token => _token;
  Dio get dioInstance {
    return _dio;
  }

  late BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );

  Future<void> init() async {
    _dio = Dio(options);
  }
}
