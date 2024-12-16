import 'package:flutter/material.dart';
import 'package:tic_tac_oe/choice_container.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static const String routeName = '/welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/Group 4.png',
          ),
          const Text(
            'Pick who goes first?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            choice(
              image: 'x',
            ),
            choice(
              image: 'o',
            ),
          ])
        ],
      ),
    ));
  }
}
