import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';

part 'types.model.g.dart';

@JsonSerializable()
class Types {
  int slot;
  Ability type;

  Types({this.slot, this.type});

  factory Types.fromJson(Map<String, dynamic> json) => _$TypesFromJson(json);
}
