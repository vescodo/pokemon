// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprites.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return Sprites(
    backDefault: json['backDefault'] as String,
    backFemale: json['backFemale'] as String,
    backShiny: json['backShiny'] as String,
    backShinyFemale: json['backShinyFemale'] as String,
    frontDefault: json['frontDefault'] as String,
    frontFemale: json['frontFemale'] as String,
    frontShiny: json['frontShiny'] as String,
    frontShinyFemale: json['frontShinyFemale'] as String,
  );
}

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'backDefault': instance.backDefault,
      'backFemale': instance.backFemale,
      'backShiny': instance.backShiny,
      'backShinyFemale': instance.backShinyFemale,
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
      'frontShiny': instance.frontShiny,
      'frontShinyFemale': instance.frontShinyFemale,
    };
