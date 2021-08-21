import 'package:json_annotation/json_annotation.dart';

part 'workplace_properties.g.dart';

@JsonSerializable()
class WorkplaceProperties {
  WorkplaceProperties({
    required this.id,
    required this.number,
    required this.description,
    required this.erpContextId,
    required this.workplaceType,
  });

  String id;
  @JsonKey(name: 'number')
  String number;
  @JsonKey(name: 'description')
  String description;
  String erpContextId;
  String workplaceType;

  factory WorkplaceProperties.fromJson(Map<String, dynamic> json) => _$WorkplacePropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$WorkplacePropertiesToJson(this);
}