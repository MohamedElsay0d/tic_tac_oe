import 'dart:developer';

import 'package:flutter/material.dart';

class BoardItem extends StatelessWidget {
  const BoardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
                    onTap: () {
                      log('message');
                    },
                    child: Container(
                      color: const Color(0xffffffff),
                      alignment: Alignment.center,
                      child: const Text(
                        'X',
                        style: TextStyle(
                          fontSize: 85,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffF54D62),
                        ),
                      ),
                    ),
                  );
  }
}