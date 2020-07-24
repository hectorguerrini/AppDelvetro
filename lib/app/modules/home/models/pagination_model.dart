import 'package:json_annotation/json_annotation.dart';

part 'pagination_model.g.dart';

@JsonSerializable()
class PaginationModel {
  final int pageIndex;
  final int pageSize;

  PaginationModel({this.pageIndex, this.pageSize});
  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationModelToJson(this);
}
