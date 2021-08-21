// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_group_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonGroupPerson _$PersonGroupPersonFromJson(Map<String, dynamic> json) {
  return PersonGroupPerson(
    json['personGroupId'] as String,
    json['name'] as String,
    json['userData'] as String,
  );
}

Map<String, dynamic> _$PersonGroupPersonToJson(PersonGroupPerson instance) =>
    <String, dynamic>{
      'personGroupId': instance.personGroupId,
      'name': instance.name,
      'userData': instance.userData,
    };
