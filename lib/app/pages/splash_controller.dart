import 'package:app_delvetro/app/shared/models/user_model.dart';
import 'package:app_delvetro/app/shared/repositories/auth_repository.dart';
import 'package:app_delvetro/app/shared/repositories/local_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final AuthRepository _authRepository;
  final LocalStorage _storage = Modular.get<LocalStorage>();

  _init() async {
    String refreshToken = await _storage.get('refreshToken');
    if (refreshToken != null) {
      UserModel userModel = await _authRepository.refreshToken(refreshToken);
      await _storage.put('accessToken', userModel.accessToken);
      Modular.to.pushReplacementNamed('/home');
    } else {
      Modular.to.pushReplacementNamed('/login');
    }
  }

  _SplashControllerBase(this._authRepository) {
    Future.delayed(Duration(seconds: 2)).then((value) => _init());
  }
}
