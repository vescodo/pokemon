// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_indicies.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameIndices _$GameIndicesFromJson(Map<String, dynamic> json) {
  return GameIndices(
    gameIndex: json['gameIndex'] as int,
    version: json['version'] == null
        ? null
        : Ability.fromJson(json['version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GameIndicesToJson(GameIndices instance) =>
    <String, dynamic>{
      'gameIndex': instance.gameIndex,
      'version': instance.version,
    };
