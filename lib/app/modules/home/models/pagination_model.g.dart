// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return PaginationModel(
    pageIndex: json['pageIndex'] as int,
    pageSize: json['pageSize'] as int,
  );
}

Map<String, dynamic> _$PaginationModelToJson(PaginationModel instance) =>
    <String, dynamic>{
      'pageIndex': instance.pageIndex,
      'pageSize': instance.pageSize,
    };
