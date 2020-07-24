import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  final String usuario;
  final String password;

  LoginModel({this.usuario, this.password});

  copyWith({String username, String password}) {
    return LoginModel(
        usuario: username ?? this.usuario, password: password ?? this.password);
  }

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
