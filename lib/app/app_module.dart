import 'package:app_delvetro/app/modules/login/login_module.dart';
import 'package:app_delvetro/app/pages/splash_controller.dart';
import 'package:app_delvetro/app/pages/splash_screen.dart';
import 'package:app_delvetro/app/shared/repositories/auth_repository.dart';
import 'package:app_delvetro/app/shared/repositories/local_storage.dart';
import 'package:app_delvetro/app/shared/utils/constants.dart';
import 'package:dio/dio.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:app_delvetro/app/app_widget.dart';
import 'package:app_delvetro/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => SplashController(i.get<AuthRepository>())),
        Bind((i) => AuthRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL))),
        Bind((i) => LocalStorage())
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashScreen()),
        Router('/home', module: HomeModule()),
        Router('/login', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
