import 'package:dio/dio.dart';
import 'login_error.dart';
import 'login_result.dart';

class LoginApi {
  final String _baseUrl = "https://dev-api.itforum.com.br";
  final String _loginPath = "/auth/User/login";
  late final Dio _dio;

  LoginApi() {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  Future<LoginResult> login(String username, String password) async {
    Response response = await _dio.post(_loginPath, data: {
      'document': username,
      'password': password,
    });
    final data = response.data;
    if (data["data"] != null) {
      return LoginResult.fromJson(data);
    }
    throw LoginError.fromJson(data);
  }
}
