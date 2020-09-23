import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';
part 'version_details.model.g.dart';

@JsonSerializable()
class VersionDetails {
  int rarity;
  Ability version;

  VersionDetails({this.rarity, this.version});

  factory VersionDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailsFromJson(json);
}
