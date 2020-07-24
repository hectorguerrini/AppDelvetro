import 'package:app_delvetro/app/modules/login/models/login_model.dart';
import 'package:app_delvetro/app/shared/models/user_model.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  final Dio dio;

  AuthRepository(this.dio);

  Future<UserModel> userLogin(LoginModel loginModel) async {
    try {
      Response response = await dio.post('/login', data: loginModel.toJson());
      UserModel userModel = UserModel.fromJson(response.data);
      setTokenHeader(userModel.accessToken);
      return userModel;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<UserModel> refreshToken(String refreshToken) async {
    try {
      Response response =
          await dio.post('/refreshToken', data: {"refreshToken": refreshToken});
      UserModel userModel = UserModel.fromJson(response.data);
      setTokenHeader(userModel.accessToken);
      return userModel;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  setTokenHeader(String token) {
    dio.options.headers['authorization'] = "Bearer $token";
  }
}
