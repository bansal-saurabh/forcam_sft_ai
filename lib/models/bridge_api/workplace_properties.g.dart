// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workplace_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkplaceProperties _$WorkplacePropertiesFromJson(Map<String, dynamic> json) {
  return WorkplaceProperties(
    id: json['id'] as String,
    number: json['number'] as String,
    description: json['description'] as String,
    erpContextId: json['erpContextId'] as String,
    workplaceType: json['workplaceType'] as String,
  );
}

Map<String, dynamic> _$WorkplacePropertiesToJson(
        WorkplaceProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'description': instance.description,
      'erpContextId': instance.erpContextId,
      'workplaceType': instance.workplaceType,
    };
