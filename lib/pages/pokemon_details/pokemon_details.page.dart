import 'package:flutter/material.dart';
import 'package:pokemon/base/base_view.widget.dart';
import 'package:pokemon/base/urls.dart';
import 'package:pokemon/common/colors.dart';
import 'package:pokemon/common/text_styles.dart';
import 'package:pokemon/pages/pokemon_details/pokemon_details.viewmodel.dart';
import 'package:pokemon/widgets/loading.widget.dart';

class PokemonsDetailsPage extends StatefulWidget {
  @override
  _PokemonsDetailsPageState createState() => _PokemonsDetailsPageState();
}

class _PokemonsDetailsPageState extends State<PokemonsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final String pokemonDetailsURL = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: BaseView<PokemonDetailsViewModel>(onModelReady: (model) async {
          await model.getPokemonDetails(pokemonDetailsURL);
        }, builder: (context, model, child) {
          if (model.pokemon != null) {
            return SafeArea(
                child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Expanded(child: _buildTopContainer(model)),
                        Expanded(child: _buildMainContainer(model))
                      ],
                    )));
          } else {
            return LoadingWidget();
          }
        }));
  }

  Widget _buildTopContainer(PokemonDetailsViewModel model) {
    String pokemonImageUrl = URL_POKEMON_IMAGES + '${model.pokemon.id}.png';

    return Column(children: [
      Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            model.pokemon.name,
            style: TextStyles.largeTextStyle.apply(color: white),
          )),
      Expanded(
          child: Image.network(
        pokemonImageUrl,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(child: LoadingWidget());
        },
      ))
    ]);
  }

  Widget _buildMainContainer(PokemonDetailsViewModel model) {
    return Container(
        child: ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(15.0),
      children: [
        Text(
          'Height:',
          style: TextStyles.regularTextStyle,
        ),
        Text(
          '${model.pokemon.height}',
          style: TextStyles.smallTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Weight:',
          style: TextStyles.regularTextStyle,
        ),
        Text(
          '${model.pokemon.weight}',
          style: TextStyles.smallTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Types:',
          style: TextStyles.regularTextStyle,
        ),
        Row(
          children:
              model.pokemon.types.map((t) => _buildChip(t.type.name)).toList(),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Abilities:',
          style: TextStyles.regularTextStyle,
        ),
        Row(
          children: model.pokemon.abilities
              .map((t) => _buildChip(t.ability.name.toString()))
              .toList(),
        ),
      ],
    ));
  }

  Widget _buildChip(
    String name,
  ) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        child: FilterChip(
            onSelected: (b) {},
            backgroundColor: pokemonBackgroundColor(name),
            label: Text(
              name,
              style: TextStyles.smallTextStyle,
            )));
  }
}
