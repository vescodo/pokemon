// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_group_details.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionGroupDetails _$VersionGroupDetailsFromJson(Map<String, dynamic> json) {
  return VersionGroupDetails(
    levelLearnedAt: json['levelLearnedAt'] as int,
    moveLearnMethod: json['moveLearnMethod'] == null
        ? null
        : Ability.fromJson(json['moveLearnMethod'] as Map<String, dynamic>),
    versionGroup: json['versionGroup'] == null
        ? null
        : Ability.fromJson(json['versionGroup'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VersionGroupDetailsToJson(
        VersionGroupDetails instance) =>
    <String, dynamic>{
      'levelLearnedAt': instance.levelLearnedAt,
      'moveLearnMethod': instance.moveLearnMethod,
      'versionGroup': instance.versionGroup,
    };
