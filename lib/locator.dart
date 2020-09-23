import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon/client/api_errors/exceptions.dart';
import 'package:pokemon/client/client.dart';
import 'package:pokemon/data/repository/remote_data_source.dart';
import 'package:pokemon/data/repository/repository.dart';
import 'package:pokemon/pages/pokemon_details/pokemon_details.viewmodel.dart';
import 'package:pokemon/pages/pokemons/pokemons.viewmodel.dart';
import 'package:pokemon/pages/pokemons/pokemons_item.viewmodel.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => ExceptionHelper());
  locator.registerLazySingleton(() => ApiClient(locator<Dio>()));

  locator.registerLazySingleton(() => RemoteDataSource(locator<ApiClient>()));
  locator.registerLazySingleton(() => Repository(locator<RemoteDataSource>()));

  locator.registerFactory(() => PokemonsViewModel());
  locator.registerFactory(() => PokemonsItemViewModel());
  locator.registerFactory(() => PokemonDetailsViewModel());
}
