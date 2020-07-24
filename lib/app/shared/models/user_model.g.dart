// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    id_usuario: json['id_usuario'] as int,
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id_usuario': instance.id_usuario,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
