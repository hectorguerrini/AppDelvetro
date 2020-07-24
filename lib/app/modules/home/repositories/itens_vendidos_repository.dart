import 'package:app_delvetro/app/modules/home/models/filtro_itens_model.dart';
import 'package:app_delvetro/app/modules/home/models/pagination_model.dart';
import 'package:dio/dio.dart';

class ItensVendidosRepository {
  final Dio dio;

  ItensVendidosRepository(this.dio);

  getTabelaItensVendidos(PaginationModel paginationModel,
      FiltroItensModel filtroItensModel) async {
    var body = {
      "filtros": filtroItensModel.toJson(),
      "paginacao": paginationModel.toJson()
    };
    Response response = await dio.post('/itens', data: body);
    print(response);
  }
}
