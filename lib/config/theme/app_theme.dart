import 'package:flutter/material.dart';

const  Color  customColor = Color(0xFF119CD3);

final List<Color> colorTheme = [
  customColor,
  Colors.blue,
  Colors.red,
  Colors.amber,
  Colors.lightGreen,
  Colors.orange,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0 && selectColor < colorTheme.length - 1,
            'Los colores tienen que estar entre 0 y ${colorTheme.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorTheme[selectColor],
    );
  }
}
