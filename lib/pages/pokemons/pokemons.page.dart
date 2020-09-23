import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pokemon/base/base_view.widget.dart';
import 'package:pokemon/common/colors.dart';
import 'package:pokemon/pages/pokemons/pokemons.viewmodel.dart';
import 'package:pokemon/pages/pokemons/pokemons_item.widget.dart';
import 'package:pokemon/widgets/loading.widget.dart';

class PokemonsPage extends StatefulWidget {
  @override
  _PokemonsPageState createState() => _PokemonsPageState();
}

class _PokemonsPageState extends State<PokemonsPage> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) => Scaffold(
      resizeToAvoidBottomPadding: false,
      body: BaseView<PokemonsViewModel>(onModelReady: (model) async {
        await model.getPokemons();
        _scrollController.addListener(() {
          if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent) {
            model.loadNextPokemons();
          }
        });
      }, builder: (context, model, child) {
        if (model.pokemons != null) {
          return SafeArea(
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(children: <Widget>[
                    TextField(
                      onChanged: (text) {
                        model.searchPokemon(text);
                      },
                      textAlign: TextAlign.center,
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Type pokemon name',
                        hintStyle: TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(16),
                        fillColor: white,
                      ),
                    ),
                    Expanded(
                        child: GridView.builder(
                      controller: _scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemCount: model.pokemons.length,
                      itemBuilder: (context, index) {
                        return PokemonsItemWidget(
                            pokemon: model.pokemons[index]);
                      },
                    ))
                  ])));
        } else {
          return LoadingWidget();
        }
      }));

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _scrollController.dispose();
    super.dispose();
  }
}
