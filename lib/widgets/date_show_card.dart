import 'package:flutter/material.dart';
import 'package:memo_mate/models/date_modal.dart';
import 'package:memo_mate/widgets/custom_text.dart';

class DateShowCard extends StatelessWidget {
  final Date date;
  final Color color;
  const DateShowCard({
    super.key,
    required this.date,
    this.color = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(right: 7),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(11),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              color: color,
              text: date.weekDay,
              size: 7,
            ),
            CustomText(
              color: color,
              text: date.day,
            ),
            CustomText(
              color: color,
              text: date.month,
              size: 7,
            )
          ],
        ),
      ),
    );
  }
}
