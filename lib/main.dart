import 'package:flutter/material.dart';
import 'package:tic_tac_oe/game_board.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameBoard()
    );
  }
}
