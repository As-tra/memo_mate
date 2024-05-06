import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/cubits/date_cubit/date_cubit.dart';
import 'package:memo_mate/models/date_modal.dart';
import 'package:memo_mate/widgets/custom_text.dart';

class TagCard extends StatelessWidget {
  final Date date;
  final Color color;
  final int index;
  const TagCard({
    super.key,
    required this.date,
    required this.color,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<DateCubit>(context).selectDateCard(index);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.only(
          right: index != 9 ? 7 : 0,
        ),
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