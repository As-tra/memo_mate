import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/home/presentation/manager/date_cubit/date_cubit.dart';
import 'package:memo_mate/features/home/presentation/manager/notes_cubit/notes_cubit.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/custom_text.dart';

class DateShowCard extends StatelessWidget {
  final DateTime date;
  final Color color;
  final int index;
  const DateShowCard({
    super.key,
    required this.date,
    required this.color,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Map<String,String> formattedDate = getFormattedDate(date);
    return GestureDetector(
      onTap: () {
        BlocProvider.of<NotesCubit>(context).currentDate = date;
        BlocProvider.of<NotesCubit>(context).getNotes();
        BlocProvider.of<DateCubit>(context).selectDate(index: index);
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
              color: color == Colors.transparent ? Colors.white : Colors.black,
              weight: color != Colors.transparent
                  ? FontWeight.bold
                  : FontWeight.normal,
              text: formattedDate['weekDay']!,
              size: 7,
            ),
            CustomText(
              color: color == Colors.transparent ? Colors.white : Colors.black,
              weight: color != Colors.transparent
                  ? FontWeight.bold
                  : FontWeight.normal,
              text: formattedDate['date']!,   
            ),
            CustomText(
              color: color == Colors.transparent ? Colors.white : Colors.black,
              weight: color != Colors.transparent
                  ? FontWeight.bold
                  : FontWeight.normal,
              text: formattedDate['month']!,
              size: 7,
            )
          ],
        ),
      ),
    );
  }
  
  Map<String,String> getFormattedDate(DateTime date) {
    List<String> weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    List<String> months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    String weekDay =  weekdays[date.weekday - 1];
    String month = months[date.month - 1];
    String day = '';
    
    if (date.day > 9) {
      day = '${date.weekday}';
    } else {
      day = '0${date.weekday}';
    }
    return {'weekDay':weekDay,'month':month,'day':day};
  }
}
