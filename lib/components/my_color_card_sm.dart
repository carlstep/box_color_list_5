// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:box_color_list_5/models/color_tile_model.dart';

class MyColorCardSm extends StatelessWidget {
  final ColorTile colorTile;
  void Function()? onTap;
  final Widget icon;

  MyColorCardSm({
    Key? key,
    required this.colorTile,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: colorTile.boxTileColor,
          radius: 30,
        ),
        title: Text(colorTile.boxTileName),
        trailing: IconButton(
          onPressed: onTap,
          icon: icon,
        ),
      ),
    );
  }
}
