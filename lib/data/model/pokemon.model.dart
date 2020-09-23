import 'package:json_annotation/json_annotation.dart';

part 'pokemon.model.g.dart';

@JsonSerializable()
class Pokemon {
  final String name;
  final String url;

  Pokemon(
    this.name,
    this.url,
  );

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
