import 'package:json_annotation/json_annotation.dart';
import 'workplace_properties.dart';

part 'workplace.g.dart';

@JsonSerializable()
class Workplace {
  Workplace({
    required this.properties,
  });

  WorkplaceProperties properties;

  factory Workplace.fromJson(Map<String, dynamic> json) => _$WorkplaceFromJson(json);

  Map<String, dynamic> toJson() => _$WorkplaceToJson(this);
}