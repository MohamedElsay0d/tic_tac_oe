import 'dart:developer';

import 'package:flutter/material.dart';

class BoardItem extends StatelessWidget {
  String text;
  int index ;
  void Function(int) onClick;
  BoardItem({super.key, required this.text, required this.index , required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick(index);
      },
      child: Container(
        color: const Color(0xffffffff),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 85,
            fontWeight: FontWeight.w900,
            color:
                text == 'X' ? const Color(0xffF54D62) : const Color(0xff3A7BD5),
          ),
        ),
      ),
    );
  }
}
