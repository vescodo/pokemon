// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_details.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionDetails _$VersionDetailsFromJson(Map<String, dynamic> json) {
  return VersionDetails(
    rarity: json['rarity'] as int,
    version: json['version'] == null
        ? null
        : Ability.fromJson(json['version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VersionDetailsToJson(VersionDetails instance) =>
    <String, dynamic>{
      'rarity': instance.rarity,
      'version': instance.version,
    };
