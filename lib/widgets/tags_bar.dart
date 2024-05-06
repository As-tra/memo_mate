import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/cubits/date_cubit/date_cubit.dart';
import 'package:memo_mate/helpers/get_dates.dart';
import 'package:memo_mate/models/date_modal.dart';
import 'package:memo_mate/widgets/date_show_card.dart';

class DateBar extends StatelessWidget {
  const DateBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Date> dates = getNext10Days();
    return BlocProvider(
      create: (context) => DateCubit(),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          itemCount: dates.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return BlocBuilder<DateCubit, DateState>(
              builder: (context, state) {
                return DateShowCard(
                  date: dates[index],
                  index: index,
                  color: BlocProvider.of<DateCubit>(context).current == index
                      ? Colors.white
                      : Colors.transparent,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
