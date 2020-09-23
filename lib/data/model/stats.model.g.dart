// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats(
    baseStat: json['baseStat'] as int,
    effort: json['effort'] as int,
    stat: json['stat'] == null
        ? null
        : Ability.fromJson(json['stat'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'baseStat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };
