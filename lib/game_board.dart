import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tic_tac_oe/board_item.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

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
                child: const Center(
                  child: Text(
                    '00:05',
                    style: TextStyle(
                        fontSize: 32,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const Text(
                'Player 1 turn',
                style: TextStyle(
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
                  itemBuilder: (context, index) => const BoardItem()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
