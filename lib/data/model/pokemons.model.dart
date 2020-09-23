import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/ability.model.dart';
import 'package:pokemon/data/model/pokemon.model.dart';

part 'pokemons.model.g.dart';

@JsonSerializable()
class Pokemons {
  int count;
  String next;
  String previous;
  List<Pokemon> results;

  Pokemons({this.count, this.next, this.previous, this.results});

  factory Pokemons.fromJson(Map<String, dynamic> json) =>
      _$PokemonsFromJson(json);
}
