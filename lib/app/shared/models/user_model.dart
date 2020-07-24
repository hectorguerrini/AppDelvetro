import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id_usuario;
  final String accessToken;
  final String refreshToken;

  UserModel({this.id_usuario, this.accessToken, this.refreshToken});

  copyWith({int id_usuario, String accessToken, String refreshToken}) {
    return UserModel(
      id_usuario: id_usuario ?? this.id_usuario,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
