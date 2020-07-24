import 'package:app_delvetro/app/shared/repositories/auth_repository.dart';
import 'package:app_delvetro/app/shared/utils/constants.dart';

import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController(i.get<AuthRepository>())),
        Bind((i) => AuthRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL)))
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
