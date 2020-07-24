import 'package:app_delvetro/app/modules/home/items_vendidos/itens_vendidos_controller.dart';
import 'package:app_delvetro/app/modules/home/items_vendidos/itens_vendidos_page.dart';
import 'package:app_delvetro/app/modules/home/repositories/home_repository.dart';
import 'package:app_delvetro/app/modules/home/repositories/itens_vendidos_repository.dart';
import 'package:app_delvetro/app/shared/utils/constants.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<HomeRepository>())),
        Bind((i) => HomeRepository(i.get<Dio>())),
        Bind((i) => ItensVendidosController(i.get<ItensVendidosRepository>())),
        Bind((i) => ItensVendidosRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL)))
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/itens_vendidos', child: (_, args) => ItensVendidosPage())
      ];

  static Inject get to => Inject<HomeModule>.of();
}
