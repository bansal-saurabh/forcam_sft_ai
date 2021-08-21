// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonGroup _$PersonGroupFromJson(Map<String, dynamic> json) {
  return PersonGroup(
    json['personGroupId'] as String,
    json['name'] as String,
    json['userData'] as String,
    json['recognitionModel'] as String,
  );
}

Map<String, dynamic> _$PersonGroupToJson(PersonGroup instance) =>
    <String, dynamic>{
      'personGroupId': instance.personGroupId,
      'name': instance.name,
      'userData': instance.userData,
      'recognitionModel': instance.recognitionModel,
    };
