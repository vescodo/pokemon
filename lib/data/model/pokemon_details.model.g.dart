// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetails _$PokemonDetailsFromJson(Map<String, dynamic> json) {
  return PokemonDetails(
    abilities: (json['abilities'] as List)
        ?.map((e) =>
            e == null ? null : Abilities.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    baseExperience: json['baseExperience'] as int,
    forms: (json['forms'] as List)
        ?.map((e) =>
            e == null ? null : Abilities.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gameIndices: (json['gameIndices'] as List)
        ?.map((e) =>
            e == null ? null : GameIndices.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    height: json['height'] as int,
    heldItems: (json['heldItems'] as List)
        ?.map((e) =>
            e == null ? null : HeldItems.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as int,
    isDefault: json['isDefault'] as bool,
    locationAreaEncounters: json['locationAreaEncounters'] as String,
    moves: (json['moves'] as List)
        ?.map(
            (e) => e == null ? null : Moves.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    order: json['order'] as int,
    species: json['species'] == null
        ? null
        : Ability.fromJson(json['species'] as Map<String, dynamic>),
    sprites: json['sprites'] == null
        ? null
        : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
    stats: (json['stats'] as List)
        ?.map(
            (e) => e == null ? null : Stats.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    types: (json['types'] as List)
        ?.map(
            (e) => e == null ? null : Types.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    weight: json['weight'] as int,
  );
}

Map<String, dynamic> _$PokemonDetailsToJson(PokemonDetails instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'baseExperience': instance.baseExperience,
      'forms': instance.forms,
      'gameIndices': instance.gameIndices,
      'height': instance.height,
      'heldItems': instance.heldItems,
      'id': instance.id,
      'isDefault': instance.isDefault,
      'locationAreaEncounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };
