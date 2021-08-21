import 'package:forcam_sft_ai/models/bridge_api/embedded_workplaces.dart';
import 'package:json_annotation/json_annotation.dart';

part 'workplace_collection.g.dart';

@JsonSerializable()
class WorkplaceCollection {
  WorkplaceCollection({
    required this.embedded,
  });

  EmbeddedWorkplaces embedded;

  factory WorkplaceCollection.fromJson(Map<String, dynamic> json) => _$WorkplaceCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WorkplaceCollectionToJson(this);
}