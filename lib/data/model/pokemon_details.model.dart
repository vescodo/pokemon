import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/abilities.model.dart';
import 'package:pokemon/data/model/ability.model.dart';
import 'package:pokemon/data/model/game_indicies.model.dart';
import 'package:pokemon/data/model/held_items.model.dart';
import 'package:pokemon/data/model/moves.model.dart';
import 'package:pokemon/data/model/sprites.model.dart';
import 'package:pokemon/data/model/stats.model.dart';
import 'package:pokemon/data/model/types.model.dart';

part 'pokemon_details.model.g.dart';

@JsonSerializable()
class PokemonDetails {
  List<Abilities> abilities;
  int baseExperience;
  List<Abilities> forms;
  List<GameIndices> gameIndices;
  int height;
  List<HeldItems> heldItems;
  int id;
  bool isDefault;
  String locationAreaEncounters;
  List<Moves> moves;
  String name;
  int order;
  Ability species;
  Sprites sprites;
  List<Stats> stats;
  List<Types> types;
  int weight;

  PokemonDetails(
      {this.abilities,
      this.baseExperience,
      this.forms,
      this.gameIndices,
      this.height,
      this.heldItems,
      this.id,
      this.isDefault,
      this.locationAreaEncounters,
      this.moves,
      this.name,
      this.order,
      this.species,
      this.sprites,
      this.stats,
      this.types,
      this.weight});

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);
}
