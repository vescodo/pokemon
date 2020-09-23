import 'package:pokemon/data/data_channel.dart';
import 'package:pokemon/data/model/pokemon.model.dart';
import 'package:pokemon/data/model/pokemon_details.model.dart';
import 'package:pokemon/data/model/pokemons.model.dart';
import 'package:pokemon/data/repository/remote_data_source.dart';

class Repository {
  final RemoteDataSource _remoteDataSource;

  Repository(
    this._remoteDataSource,
  );

  Future<DataChannel<Exception, PokemonDetails>> getPokemon(String name) async {
    return _remoteDataSource.getPokemon(name);
  }

  Future<DataChannel<Exception, Pokemons>> getPokemons(
      int limit, int offset) async {
    return _remoteDataSource.getPokemons(limit, offset);
  }

  Future<DataChannel<Exception, PokemonDetails>> getPokemonDetails(
      String detailsUrl) async {
    return _remoteDataSource.getPokemonDetails(detailsUrl);
  }

  Future<bool> cancelRequest() {
    return _remoteDataSource.cancelRequest();
  }
}
