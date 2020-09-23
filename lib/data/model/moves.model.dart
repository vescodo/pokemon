import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';
import 'package:pokemon/data/model/version_group_details.model.dart';

part 'moves.model.g.dart';

@JsonSerializable()
class Moves {
  Ability move;
  List<VersionGroupDetails> versionGroupDetails;

  Moves({this.move, this.versionGroupDetails});

  factory Moves.fromJson(Map<String, dynamic> json) => _$MovesFromJson(json);
}
