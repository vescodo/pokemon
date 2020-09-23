import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';

part 'stats.model.g.dart';

@JsonSerializable()
class Stats {
  int baseStat;
  int effort;
  Ability stat;

  Stats({this.baseStat, this.effort, this.stat});

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}
