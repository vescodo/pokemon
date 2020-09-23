import 'package:flutter/material.dart';
import 'package:pokemon/app.contstants.dart';
import 'package:pokemon/base/base_view.widget.dart';
import 'package:pokemon/base/urls.dart';
import 'package:pokemon/common/colors.dart';
import 'package:pokemon/common/text_styles.dart';
import 'package:pokemon/data/model/pokemon.model.dart';
import 'package:pokemon/pages/pokemons/pokemons_item.viewmodel.dart';
import 'package:pokemon/widgets/loading.widget.dart';

class PokemonsItemWidget extends StatelessWidget {
  final Pokemon pokemon;
  final VoidCallback onPressed;

  PokemonsItemWidget({
    this.onPressed,
    @required this.pokemon,
  });
  @override
  Widget build(BuildContext context) {
    return BaseView<PokemonsItemViewModel>(
      onModelReady: (model) async {
        await model.getPokemonDetails(pokemon.url);
      },
      builder: (context, model, child) {
        if (model.pokemon != null) {
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutePaths.POKEMON_DETAILS,
                    arguments: pokemon.url);
              },
              // The custom button
              child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: pokemonBackgroundColor(
                        model.pokemon.types[0].type.name),
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.network(
                              URL_POKEMON_IMAGES + '${model.pokemon.id}.png',
                              fit: BoxFit.fill,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(child: LoadingWidget());
                              },
                            )),
                        Text(
                          pokemon.name,
                          style: TextStyles.smallTextStyle.apply(color: white),
                        ),
                      ])));
        } else {
          return Container(
              child: LoadingWidget(),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: greyDark,
                borderRadius: new BorderRadius.circular(20.0),
              ));
        }
      },
    );
  }
}
