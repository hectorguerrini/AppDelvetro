// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtro_itens_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FiltroItensModel _$FiltroItensModelFromJson(Map<String, dynamic> json) {
  return FiltroItensModel(
    id: json['id'] == null
        ? null
        : FiltroModel.fromJson(json['id'] as Map<String, dynamic>),
    cliente: json['cliente'] == null
        ? null
        : FiltroModel.fromJson(json['cliente'] as Map<String, dynamic>),
    descricao: json['descricao'] == null
        ? null
        : FiltroModel.fromJson(json['descricao'] as Map<String, dynamic>),
    dtVenda: json['dtVenda'] == null
        ? null
        : FiltroModel.fromJson(json['dtVenda'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : FiltroModel.fromJson(json['status'] as Map<String, dynamic>),
    financeiro: json['financeiro'] == null
        ? null
        : FiltroModel.fromJson(json['financeiro'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FiltroItensModelToJson(FiltroItensModel instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'cliente': instance.cliente?.toJson(),
      'descricao': instance.descricao?.toJson(),
      'dtVenda': instance.dtVenda?.toJson(),
      'status': instance.status?.toJson(),
      'financeiro': instance.financeiro?.toJson(),
    };
