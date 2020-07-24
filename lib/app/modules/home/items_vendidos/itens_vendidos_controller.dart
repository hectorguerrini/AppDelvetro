import 'package:app_delvetro/app/modules/home/models/filtro_itens_model.dart';
import 'package:app_delvetro/app/modules/home/models/pagination_model.dart';
import 'package:app_delvetro/app/modules/home/repositories/itens_vendidos_repository.dart';
import 'package:mobx/mobx.dart';
part 'itens_vendidos_controller.g.dart';

class ItensVendidosController = _ItensVendidosControllerBase
    with _$ItensVendidosController;

abstract class _ItensVendidosControllerBase with Store {
  final ItensVendidosRepository itensVendidosRepository;
  @observable
  PaginationModel paginationModel;
  @observable
  FiltroItensModel filtroItensModel;

  // @observable
  // ObservableFuture<>

  _ItensVendidosControllerBase(this.itensVendidosRepository) {
    paginationModel = new PaginationModel(pageIndex: 0, pageSize: 10);
    filtroItensModel = new FiltroItensModel();
  }

  @action
  getTabelaItensVendidos() {
    itensVendidosRepository.getTabelaItensVendidos(
        paginationModel, filtroItensModel);
  }
}
