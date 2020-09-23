import 'package:flutter/material.dart';
import 'package:pokemon/common/colors.dart';

class LoadingWidget extends StatelessWidget {
  final Color indicatorColor;

  const LoadingWidget({this.indicatorColor = indicator});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(indicatorColor),
          ),
        ));
  }
}
