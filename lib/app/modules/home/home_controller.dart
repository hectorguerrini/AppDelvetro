import 'package:app_delvetro/app/modules/home/repositories/home_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository homeRepository;
  _HomeControllerBase(this.homeRepository) {}

  @action
  getTeste() {
    homeRepository.getTeste();
  }
}
