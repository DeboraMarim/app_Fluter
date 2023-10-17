import 'package:rxdart/rxdart.dart';
import 'login_api.dart';
import 'login_error.dart';
import 'login_result.dart';

class LoginBloc {
  LoginApi api = LoginApi();
  BehaviorSubject<LoginError> errorSubject =
      BehaviorSubject<LoginError>.seeded(LoginError());

  Future<LoginResult> login(String username, String password) async {
    try {
      final result = await api.login(username, password);
      return result;
    } catch (error) {
      errorSubject.sink.add(error as LoginError);
    }
    return LoginResult();
  }

  void dispose() {
    errorSubject.close();
  }
}
