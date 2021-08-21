// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embedded_workplaces.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmbeddedWorkplaces _$EmbeddedWorkplacesFromJson(Map<String, dynamic> json) {
  return EmbeddedWorkplaces(
    workplaces: (json['workplaces'] as List<dynamic>)
        .map((e) => Workplace.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$EmbeddedWorkplacesToJson(EmbeddedWorkplaces instance) =>
    <String, dynamic>{
      'workplaces': instance.workplaces,
    };
