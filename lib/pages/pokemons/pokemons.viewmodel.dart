import 'package:pokemon/base/base.viewmodel.dart';
import 'package:pokemon/data/model/pokemon.model.dart';
import 'package:pokemon/data/repository/repository.dart';
import 'package:pokemon/locator.dart';

class PokemonsViewModel extends BaseViewModel {
  final Repository _repository = locator<Repository>();

  List<Pokemon> _pokemons = List();
  List<Pokemon> get pokemons => _pokemons;

  int _currentPage = 0;
  int _limit = 15;

  Future getPokemons() async {
    int offset = _limit * _currentPage;

    final response = await _repository.getPokemons(_limit, offset);

    response.pick(
      onData: (data) async {
        _pokemons.addAll(data.results);
        notifyListeners();
      },
      onError: (errorMessage) {
        print('todo: handle errors: ' + errorMessage);
      },
    );
  }

  Future searchPokemon(String pokemonName) async {
    _currentPage = 0;

    _pokemons.clear();
    notifyListeners();

    if (pokemonName.isNotEmpty) {
      final response = await _repository.getPokemon(pokemonName);

      response.pick(
        onData: (data) async {
          _pokemons.add(Pokemon(
              data.name, 'https://pokeapi.co/api/v2/pokemon/${data.id}/'));
          notifyListeners();
        },
        onError: (errorMessage) {
          print('todo: handle errors: ' + errorMessage);
        },
      );
    } else {
      getPokemons();
    }
  }

  void loadNextPokemons() {
    _currentPage++;
    getPokemons();
  }
}
