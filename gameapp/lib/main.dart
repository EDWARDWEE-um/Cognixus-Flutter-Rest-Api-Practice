import 'package:flutter/material.dart';
import 'package:gameapp/screen/game_info_screen.dart';
import 'package:gameapp/screen/game_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GameListScreen(),
    );
  }
}
