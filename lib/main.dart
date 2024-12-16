import 'package:flutter/material.dart';
import 'package:tic_tac_oe/game_board.dart';
import 'package:tic_tac_oe/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.routeName, 
      routes: {
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        GameBoard.routeName: (context) => GameBoard(),
      },
    );
  }
}
