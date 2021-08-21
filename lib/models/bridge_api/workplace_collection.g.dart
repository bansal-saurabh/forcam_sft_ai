// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workplace_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkplaceCollection _$WorkplaceCollectionFromJson(Map<String, dynamic> json) {
  return WorkplaceCollection(
    embedded:
        EmbeddedWorkplaces.fromJson(json['_embedded'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WorkplaceCollectionToJson(
        WorkplaceCollection instance) =>
    <String, dynamic>{
      '_embedded': instance.embedded,
    };
