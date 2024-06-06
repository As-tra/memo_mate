import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/home/data/models/dateModel/date_model.dart';
import 'package:memo_mate/features/home/presentation/manager/date_cubit/date_cubit.dart';
import 'package:memo_mate/core/utils/functions/get_dates.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/date_show_card.dart';

class DateBar extends StatelessWidget {
  const DateBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Date> dates = getNext10Days();
    return BlocProvider(
      create: (context) => DateCubit(),
      child: SizedBox(
        height: 65,
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
