// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Types _$TypesFromJson(Map<String, dynamic> json) {
  return Types(
    slot: json['slot'] as int,
    type: json['type'] == null
        ? null
        : Ability.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TypesToJson(Types instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
