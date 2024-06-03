import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';

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
          Text(
            'Title',
            style: Styles.textStyle15.copyWith(
              color: Colors.black,
            ),
          ),
          Text(
            'Edited 1h ago',
            style: Styles.textStyle10.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              'Do your homework',
              style: Styles.textStyle15.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
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
