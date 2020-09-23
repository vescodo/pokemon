// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'held_items.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeldItems _$HeldItemsFromJson(Map<String, dynamic> json) {
  return HeldItems(
    item: json['item'] == null
        ? null
        : Ability.fromJson(json['item'] as Map<String, dynamic>),
    versionDetails: (json['versionDetails'] as List)
        ?.map((e) => e == null
            ? null
            : VersionDetails.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HeldItemsToJson(HeldItems instance) => <String, dynamic>{
      'item': instance.item,
      'versionDetails': instance.versionDetails,
    };
