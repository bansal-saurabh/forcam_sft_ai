import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class Token {
  final String accessToken;
  final String refreshToken;
  final String tokenType;
  final String scope;
  // final DateTime? dateOfBirth;
  Token(this.accessToken,  this.refreshToken, this.tokenType, this.scope);
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}