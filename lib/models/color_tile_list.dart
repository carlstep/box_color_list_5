import 'package:box_color_list_5/models/color_tile_model.dart';
import 'package:flutter/material.dart';

class ColorTileList extends ChangeNotifier {
  // list of all ColorTile items

  final List<ColorTile> _colorTileList = [
    // list of the ColorTile items
    ColorTile(
      id: 001,
      boxTileColor: Colors.red,
      boxTileName: 'boxTileOne',
      boxTileValue: 1.20,
    ),
    ColorTile(
      id: 002,
      boxTileColor: Colors.green,
      boxTileName: 'boxTileTwo',
      boxTileValue: 2.20,
    ),
    ColorTile(
      id: 003,
      boxTileColor: Colors.blue,
      boxTileName: 'boxTileThree',
      boxTileValue: 1.55,
    ),
    ColorTile(
      id: 004,
      boxTileColor: Colors.amber,
      boxTileName: 'boxTileFour',
      boxTileValue: 0.80,
    ),
    ColorTile(
      id: 005,
      boxTileColor: Colors.purple,
      boxTileName: 'boxTileFive',
      boxTileValue: 1.90,
    ),
  ];

  // list of ColorTile items selected by user
  List<ColorTile> _userColorTileList = [];

  // get a display list of all ColorTile items
  List<ColorTile> get displayColorTiles => _colorTileList;

  // get a display list of all ColorTile items selected by user
  List<ColorTile> get userColorTileList => _userColorTileList;

  // add method ColorTile to userColorTileList
  void addItemToColorTileList(ColorTile colorTile) {
    print('addItemToColorTileList -3 ');
    _userColorTileList.add(colorTile);

    notifyListeners();
  }

  // delete method ColorTile to userColorTileList
  void removeItemFromList(ColorTile colorTile) {
    _userColorTileList.remove(colorTile);

    notifyListeners();
  }

  // replace method ColorTile to userColorTileList
}
