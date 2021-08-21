import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class Token {
  final String access_token;
  final String refresh_token;
  final String token_type;
  final String scope;
  // final DateTime? dateOfBirth;
  Token(this.access_token,  this.refresh_token, this.token_type, this.scope);
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}