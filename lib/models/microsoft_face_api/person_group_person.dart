import 'package:json_annotation/json_annotation.dart';

part 'person_group_person.g.dart';

@JsonSerializable()
class PersonGroupPerson {
  final String personGroupId;
  final String name;
  final String userData;
  // final DateTime? dateOfBirth;
  PersonGroupPerson(this.personGroupId,  this.name, this.userData);
  factory PersonGroupPerson.fromJson(Map<String, dynamic> json) => _$PersonGroupPersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonGroupPersonToJson(this);
}