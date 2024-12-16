import 'package:flutter/material.dart';
import 'package:tic_tac_oe/board_item.dart';

class GameBoard extends StatefulWidget {
  GameBoard({super.key});
  static const String routeName = '/gameboard';
  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List items = List.filled(9, '');
  int round = 1;
  String player = 'X';
  String txt = 'player 1';
  int player1scor = 0;
  int player2score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xff00D2FF).withOpacity(1),
              const Color(0xff3A7BD5).withOpacity(1),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 76,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.all(Radius.circular(44)),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'X: $player1scor',
                        style: const TextStyle(
                            fontSize: 32,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'O: $player2score',
                        style: const TextStyle(
                            fontSize: 32,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                '$txt turn',
                style: const TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.69,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(44)),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      mainAxisExtent: MediaQuery.of(context).size.height * 0.23,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) => BoardItem(
                          text: items[index],
                          index: index,
                          onClick: (index) {
                            if (items[index] == '') {
                              items[index] = player;
                              if (checkWin(player)) {
                                if (player == 'X') {
                                  player1scor++;
                                } else {
                                  player2score++;
                                }
                                items = List.filled(9, '');
                                round = 1;
                                txt = 'Player O';
                              } else {
                                player = (player == 'X') ? 'O' : 'X';
                                txt = (player == 'X') ? 'Player X' : 'Player O';
                                round++;
                              }
                              if (round == 10) {
                                items = List.filled(9, '');
                                txt = 'Player X';
                                player = 'X';
                                round = 1;
                              }
                            }
                            setState(() {});
                          },
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool checkWin(String symbol) {
    if (round < 5) return false;
    if ((items[0] == symbol && items[1] == symbol && items[2] == symbol) ||
        (items[3] == symbol && items[4] == symbol && items[5] == symbol) ||
        (items[6] == symbol && items[7] == symbol && items[8] == symbol) ||
        (items[0] == symbol && items[3] == symbol && items[6] == symbol) ||
        (items[1] == symbol && items[4] == symbol && items[7] == symbol) ||
        (items[2] == symbol && items[5] == symbol && items[8] == symbol) ||
        (items[0] == symbol && items[4] == symbol && items[8] == symbol) ||
        (items[2] == symbol && items[4] == symbol && items[6] == symbol)) {
      return true;
    }
    return false;
  }
}
