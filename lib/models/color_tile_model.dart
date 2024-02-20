import 'package:flutter/material.dart';

class ColorTile {
  final int id;
  final Color boxTileColor;
  final String boxTileName;
  final double boxTileValue;
  bool isSelected = false;

  ColorTile({
    required this.id,
    required this.boxTileColor,
    required this.boxTileName,
    required this.boxTileValue,
  });
}
