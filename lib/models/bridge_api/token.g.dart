// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token(
    json['accessToken'] as String,
    json['refreshToken'] as String,
    json['tokenType'] as String,
    json['scope'] as String,
  );
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'scope': instance.scope,
    };
