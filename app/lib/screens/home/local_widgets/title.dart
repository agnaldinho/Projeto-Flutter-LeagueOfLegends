import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '         Dicionario de Campeões',
          style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Procure os Campeões do League of legends pelo nome.",
          style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: 16,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
