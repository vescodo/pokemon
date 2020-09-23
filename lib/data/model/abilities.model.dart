import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';

part 'abilities.model.g.dart';

@JsonSerializable()
class Abilities {
  Ability ability;
  bool isHidden;
  int slot;

  Abilities({this.ability, this.isHidden, this.slot});

  factory Abilities.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesFromJson(json);
}
