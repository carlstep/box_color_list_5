// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:box_color_list_5/models/color_tile_model.dart';

class MyColorCard extends StatelessWidget {
  final ColorTile colorTile;
  void Function()? onTap;
  final Widget icon;

  MyColorCard({
    Key? key,
    required this.colorTile,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: colorTile.boxTileColor,
              radius: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(colorTile.boxTileName),
                const SizedBox(
                  height: 20,
                ),
                Text(colorTile.boxTileValue.toString())
              ],
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              onPressed: onTap,
              icon: icon,
            ),
          ],
        ),
      ),
    );
  }
}
