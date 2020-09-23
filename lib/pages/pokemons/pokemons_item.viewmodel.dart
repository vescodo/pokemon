import 'package:pokemon/base/base.viewmodel.dart';
import 'package:pokemon/data/model/pokemon_details.model.dart';
import 'package:pokemon/data/repository/repository.dart';
import 'package:pokemon/locator.dart';

class PokemonsItemViewModel extends BaseViewModel {
  final Repository _repository = locator<Repository>();

  PokemonDetails _pokemon;
  PokemonDetails get pokemon => _pokemon;

  Future getPokemonDetails(String url) async {
    final response = await _repository.getPokemonDetails(url);

    response.pick(
      onData: (data) async {
        _pokemon = data;
        notifyListeners();
      },
      onError: (errorMessage) {
        print('todo: handle errors: ' + errorMessage);
      },
    );
  }
}
