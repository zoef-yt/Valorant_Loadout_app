import 'package:flutter/material.dart';
import 'package:valorant_loadout/Screen/MainScreen.dart';
import 'package:valorant_loadout/Screen/loadOutScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        LoadOutScreen.id: (context) => LoadOutScreen(),
      },
    );
  }
}
