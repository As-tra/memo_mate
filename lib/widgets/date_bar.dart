import 'package:flutter/material.dart';
import 'package:memo_mate/helpers/get_dates.dart';
import 'package:memo_mate/models/date_modal.dart';
import 'package:memo_mate/widgets/date_show_card.dart';

class DateBar extends StatelessWidget {
  const DateBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Date> dates = getNextTwoWeeks();
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: dates.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DateShowCard(
            date: dates[index],
          );
        },
      ),
    );
  }
}
