import 'package:flutter/material.dart';
import 'package:tic_tac_oe/game_board.dart';

class choice extends StatelessWidget {
  String image;
  choice({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(GameBoard.routeName, arguments: image);
      },
      child: Container(
        height: 140,
        width: 164,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Center(
          child: Image.asset(
            'assets/$image.png',
          ),
        ),
      ),
    );
  }
}
