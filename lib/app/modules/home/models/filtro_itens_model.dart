import 'package:app_delvetro/app/modules/home/models/filtro_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'filtro_itens_model.g.dart';

@JsonSerializable(explicitToJson: true)
class FiltroItensModel {
  final FiltroModel id;
  final FiltroModel cliente;
  final FiltroModel descricao;
  final FiltroModel dtVenda;
  final FiltroModel status;
  final FiltroModel financeiro;

  FiltroItensModel(
      {this.id,
      this.cliente,
      this.descricao,
      this.dtVenda,
      this.status,
      this.financeiro});
  factory FiltroItensModel.fromJson(Map<String, dynamic> json) =>
      _$FiltroItensModelFromJson(json);

  Map<String, dynamic> toJson() => _$FiltroItensModelToJson(this);
}
