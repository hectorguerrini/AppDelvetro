import 'package:json_annotation/json_annotation.dart';

part 'filtro_model.g.dart';

@JsonSerializable()
class FiltroModel {
  final String tipo;
  final String valor;
  final String valorMin;
  final String valorMax;
  final bool filter;

  FiltroModel(
      {this.tipo, this.valor, this.valorMin, this.valorMax, this.filter});
  factory FiltroModel.fromJson(Map<String, dynamic> json) =>
      _$FiltroModelFromJson(json);

  Map<String, dynamic> toJson() => _$FiltroModelToJson(this);
}
