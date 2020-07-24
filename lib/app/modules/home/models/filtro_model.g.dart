// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FiltroModel _$FiltroModelFromJson(Map<String, dynamic> json) {
  return FiltroModel(
    tipo: json['tipo'] as String,
    valor: json['valor'] as String,
    valorMin: json['valorMin'] as String,
    valorMax: json['valorMax'] as String,
    filter: json['filter'] as bool,
  );
}

Map<String, dynamic> _$FiltroModelToJson(FiltroModel instance) =>
    <String, dynamic>{
      'tipo': instance.tipo,
      'valor': instance.valor,
      'valorMin': instance.valorMin,
      'valorMax': instance.valorMax,
      'filter': instance.filter,
    };
