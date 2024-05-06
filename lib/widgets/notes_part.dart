import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:memo_mate/constants.dart';
import 'package:memo_mate/widgets/note_card.dart';

class NotesPart extends StatelessWidget {
  const NotesPart({super.key});

  @override
  Widget build(BuildContext context) {
    List notes = [
      'do you homework',
      'buy something for your mom',
      'help someone with something',
      'in the next week you must buy this and this and this and this for your team',
      'drink water in the summer and buy some water and',
      'in the next week you must buy this and this and this and this for your team in the next week you must buy this and this and this and this for your team',
      'in the next week you must buy this and this and this and just some words',
    ];
    return Expanded(
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 13,
        itemCount: notes.length,
        crossAxisSpacing: 13,
        itemBuilder: (context, index) {
          return NoteCard(
            details: notes[index],
            color: knoteColors[index % knoteColors.length],
          );
        },
      ),
    );
  }
}
