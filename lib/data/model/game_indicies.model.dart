import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';

part 'game_indicies.model.g.dart';

@JsonSerializable()
class GameIndices {
  int gameIndex;
  Ability version;

  GameIndices({this.gameIndex, this.version});

  factory GameIndices.fromJson(Map<String, dynamic> json) =>
      _$GameIndicesFromJson(json);
}
