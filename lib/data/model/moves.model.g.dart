// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moves.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Moves _$MovesFromJson(Map<String, dynamic> json) {
  return Moves(
    move: json['move'] == null
        ? null
        : Ability.fromJson(json['move'] as Map<String, dynamic>),
    versionGroupDetails: (json['versionGroupDetails'] as List)
        ?.map((e) => e == null
            ? null
            : VersionGroupDetails.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MovesToJson(Moves instance) => <String, dynamic>{
      'move': instance.move,
      'versionGroupDetails': instance.versionGroupDetails,
    };
