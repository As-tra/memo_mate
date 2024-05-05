import 'package:flutter/material.dart';
import 'package:memo_mate/models/date_modal.dart';
import 'package:memo_mate/widgets/custom_text.dart';

class DateShowCard extends StatelessWidget {
  final Date date;
  const DateShowCard({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(right: 7),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: date.weekDay,
              size: 7,
            ),
            CustomText(
              text: date.day,
            ),
            CustomText(
              text: date.month,
              size: 7,
            )
          ],
        ),
      ),
    );
  }
}
