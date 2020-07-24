import 'package:app_delvetro/app/shared/repositories/auth_repository.dart';
import 'package:app_delvetro/app/shared/repositories/local_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'models/login_model.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final AuthRepository authRepository;
  final LocalStorage _storage = Modular.get<LocalStorage>();

  @observable
  LoginModel loginModel;

  _LoginControllerBase(this.authRepository) {
    loginModel = new LoginModel(usuario: '', password: '');
  }

  @action
  setUsername(String value) =>
      loginModel = loginModel.copyWith(username: value);
  @action
  setPassword(String value) =>
      loginModel = loginModel.copyWith(password: value);

  @action
  login() async {
    await authRepository.userLogin(loginModel).then((value) async {
      await _storage.put('idUsuario', value.id_usuario.toString());
      await _storage.put('accessToken', value.accessToken);
      await _storage.put('refreshToken', value.refreshToken);
      Modular.to.pushReplacementNamed('/home');
    });
  }

  @computed
  bool get isValid =>
      loginModel.usuario.isNotEmpty &&
      loginModel.password.isNotEmpty &&
      loginModel.password.length >= 6;
}
