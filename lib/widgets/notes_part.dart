import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:memo_mate/widgets/custom_text.dart';

class NotesPart extends StatelessWidget {
  const NotesPart({super.key});

  @override
  Widget build(BuildContext context) {
    List notes = [
      'do you homework',
      'buy something for your mom',
      'help someone with something',
      'in the next week you must buy this and this and this and this for your team',
      'drink water in the summer',
    ];
    return Expanded(
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        itemCount: notes.length,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return NoteCard(
            details: notes[index],
            color: Colors.blue,
          );
        },
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  final String details;
  final Color color;
  const NoteCard({
    super.key,
    required this.details,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: 'Title',
            color: Colors.black,
            weight: FontWeight.w600,
          ),
          const CustomText(
            text: 'Edited 1h ago',
            color: Colors.black,
            size: 10,
            weight: FontWeight.w300,
          ),
          CustomText(text: details, color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/icons/empty_heart.png'),
            ],
          )
        ],
      ),
    );
  }
}