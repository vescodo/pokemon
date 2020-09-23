import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pokemon/app.contstants.dart';
import 'package:pokemon/common/dimen.dart';
import 'package:pokemon/common/images.dart';
import 'package:pokemon/common/text_styles.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      Dimen().init(context);
      TextStyles().init(context);
      await Future.delayed(Duration(seconds: 4), () async {
        Navigator.pushNamedAndRemoveUntil(
            context, RoutePaths.POKEMONS, (r) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(20), child: Image.asset(logo));
  }
}
