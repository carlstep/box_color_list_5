import 'package:box_color_list_5/models/color_tile_list.dart';
import 'package:box_color_list_5/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ColorTileList(),
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(useMaterial3: true),
            home: const HomePage(),
          );
        });
  }
}
