
import 'package:flutter/material.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/custom_text.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: CustomText(text: details, color: Colors.black),
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