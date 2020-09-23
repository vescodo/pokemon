import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';

part 'version_group_details.model.g.dart';

@JsonSerializable()
class VersionGroupDetails {
  int levelLearnedAt;
  Ability moveLearnMethod;
  Ability versionGroup;

  VersionGroupDetails(
      {this.levelLearnedAt, this.moveLearnMethod, this.versionGroup});

  factory VersionGroupDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailsFromJson(json);
}
