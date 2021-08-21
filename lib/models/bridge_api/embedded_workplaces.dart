import 'package:forcam_sft_ai/models/bridge_api/workplace.dart';
import 'package:json_annotation/json_annotation.dart';

part 'embedded_workplaces.g.dart';

@JsonSerializable()
class EmbeddedWorkplaces {
  EmbeddedWorkplaces({
    required this.workplaces,
  });

  List<Workplace> workplaces = [];
  // EmbeddedWorkplaces workplaces;

  factory EmbeddedWorkplaces.fromJson(Map<String, dynamic> json) => _$EmbeddedWorkplacesFromJson(json);

  Map<String, dynamic> toJson() => _$EmbeddedWorkplacesToJson(this);

  List<EmbeddedWorkplaces> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedWorkplaces>.empty(growable: true) : json.map((value) => new EmbeddedWorkplaces.fromJson(value)).toList();
  }

}