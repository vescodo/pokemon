import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon/app.contstants.dart';
import 'package:pokemon/common/colors.dart';
import 'package:pokemon/locator.dart';
import 'package:pokemon/pages/pokemon_details/pokemon_details.page.dart';
import 'package:pokemon/pages/pokemons/pokemons.page.dart';
import 'package:pokemon/pages/splash/splash.page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: black,
    ),
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Strings.APP_NAME,
        theme: ThemeData(
            backgroundColor: black,
            scaffoldBackgroundColor: black,
            brightness: Brightness.light,
            primaryColor: primary,
            accentColor: secondary,
            cursorColor: black),
        debugShowCheckedModeBanner: false,
        initialRoute: RoutePaths.SPLASH,
        routes: {
          RoutePaths.SPLASH: (context) => SplashPage(),
          RoutePaths.POKEMONS: (context) => PokemonsPage(),
          RoutePaths.POKEMON_DETAILS: (context) => PokemonsDetailsPage()
        });
  }
}
