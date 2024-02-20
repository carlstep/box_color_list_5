import 'package:box_color_list_5/components/my_color_card.dart';
import 'package:box_color_list_5/components/my_color_card_sm.dart';
import 'package:box_color_list_5/models/color_tile_list.dart';
import 'package:box_color_list_5/models/color_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // add card to userColorTileList
  void addToList(ColorTile colorTile) {
    print('addToUserList');
    Provider.of<ColorTileList>(context, listen: false)
        .addItemToColorTileList(colorTile);
  }

  // remove colorTile from userColorTileList
  void removeFromList(ColorTile colorTile) {
    print('addToUserList');
    Provider.of<ColorTileList>(context, listen: false)
        .removeItemFromList(colorTile);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorTileList>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('box color list 5'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('user selected data'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.userColorTileList.length,
                itemBuilder: (context, index) {
                  ColorTile eachColorTile = value.userColorTileList[index];

                  return MyColorCard(
                    onTap: () => removeFromList(eachColorTile),
                    colorTile: eachColorTile,
                    icon: const Icon(Icons.delete),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: value.userColorTileList.length <= 4
            ? FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 400,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Select from list...',
                                style: TextStyle(fontSize: 28),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: value.displayColorTiles.length,
                                itemBuilder: (context, index) {
                                  ColorTile eachColorTile =
                                      value.displayColorTiles[index];

                                  return Padding(
                                    key: ValueKey(index),
                                    padding: const EdgeInsets.all(8.0),
                                    child: MyColorCardSm(
                                      onTap: () => addToList(eachColorTile),
                                      colorTile: eachColorTile,
                                      icon: const Icon(Icons
                                          .check_box_outline_blank_outlined),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Icon(Icons.add),
              )
            : null,
      ),
    );
  }
}
