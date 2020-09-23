import 'package:json_annotation/json_annotation.dart';

part 'ability.model.g.dart';

@JsonSerializable()
class Ability {
  String name;
  String url;

  Ability({this.name, this.url});

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}
