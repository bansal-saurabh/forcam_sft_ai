import 'package:json_annotation/json_annotation.dart';

part 'person_group.g.dart';

@JsonSerializable()
class PersonGroup {
  final String personGroupId;
  final String name;
  final String userData;
  final String recognitionModel;
  // final DateTime? dateOfBirth;
  PersonGroup(this.personGroupId,  this.name, this.userData, this.recognitionModel);
  factory PersonGroup.fromJson(Map<String, dynamic> json) => _$PersonGroupFromJson(json);
  Map<String, dynamic> toJson() => _$PersonGroupToJson(this);
}