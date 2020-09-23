// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abilities.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) {
  return Abilities(
    ability: json['ability'] == null
        ? null
        : Ability.fromJson(json['ability'] as Map<String, dynamic>),
    isHidden: json['isHidden'] as bool,
    slot: json['slot'] as int,
  );
}

Map<String, dynamic> _$AbilitiesToJson(Abilities instance) => <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
      'slot': instance.slot,
    };
