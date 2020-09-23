import 'package:pokemon/client/client.dart';
import 'package:pokemon/data/data_channel.dart';
import 'package:pokemon/data/model/pokemon.model.dart';
import 'package:pokemon/data/model/pokemon_details.model.dart';
import 'package:pokemon/data/model/pokemons.model.dart';

class RemoteDataSource {
  final ApiClient _apiClient;

  RemoteDataSource(this._apiClient);

  Future<DataChannel<Exception, PokemonDetails>> getPokemon(String name) async {
    try {
      String url = 'pokemon/$name';
      final response = await _apiClient.get(url);
      return DataChannel.data(
        PokemonDetails.fromJson(response.data as Map<String, dynamic>),
      );
    } on Exception catch (e) {
      return DataChannel.error(
        e,
      );
    }
  }

  Future<DataChannel<Exception, Pokemons>> getPokemons(
      int limit, int offset) async {
    try {
      final response =
          await _apiClient.get('pokemon?limit=$limit&offset=$offset');
      return DataChannel.data(
        Pokemons.fromJson(response.data as Map<String, dynamic>),
      );
    } on Exception catch (e) {
      return DataChannel.error(
        e,
      );
    }
  }

  Future<DataChannel<Exception, PokemonDetails>> getPokemonDetails(
      String detailsUrl) async {
    try {
      final response = await _apiClient.get(detailsUrl);
      return DataChannel.data(
        PokemonDetails.fromJson(response.data as Map<String, dynamic>),
      );
    } on Exception catch (e) {
      return DataChannel.error(
        e,
      );
    }
  }

  Future<bool> cancelRequest() {
    return _apiClient.cancelRequests();
  }
}
