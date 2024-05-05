import 'package:flutter/material.dart';
import 'package:memo_mate/constants.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          ktitle,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontFamily: 'DancingScript',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset('assets/icons/burger_menu.png'),
        ),
      ],
    );
  }
}
