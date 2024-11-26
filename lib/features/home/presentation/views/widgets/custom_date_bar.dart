import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/home/presentation/manager/notes_cubit/notes_cubit.dart';

class CustomDateBar extends StatefulWidget {
  const CustomDateBar({
    super.key,
  });

  @override
  State<CustomDateBar> createState() => _CustomDateBarState();
}

class _CustomDateBarState extends State<CustomDateBar> {
  DateTime currentSelectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return EasyTheme(
      data: EasyTheme.of(context).copyWith(
        dayTopElementStyle: _getStyle(),
        dayBottomElementStyle: _getStyle(),
        currentDayBottomElementStyle: _getStyle(),
        currentDayTopElementStyle: _getStyle(),
        currentDayShape: _getBorderRadius(),
        dayShape: _getBorderRadius(),
        // dayMiddleElementStyle: _getStyle(),
        dayBackgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return Theme.of(context).colorScheme.primary;
            }
            return Theme.of(context).colorScheme.surface;
          },
        ),
        dayForegroundColor: _getDayColor(),
        currentDayForegroundColor: _getDayColor(),
        dayBorder: _getBorder(context),
      ),
      child: EasyDateTimeLinePicker(
        itemExtent: 50,
        timelineOptions: const TimelineOptions(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 0),
        ),
        firstDate: DateTime(2024, 1, 1),
        lastDate: DateTime(2030, 3, 18),
        focusedDate: currentSelectedDate,
        onDateChange: (date) {
          currentSelectedDate = date;
          BlocProvider.of<NotesCubit>(context).currentDate = date;
          BlocProvider.of<NotesCubit>(context).getNotes();
          setState(() {});
        },
      ),
    );
  }

  WidgetStatePropertyAll<OutlinedBorder?> _getBorderRadius() {
    return WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  WidgetStateBorderSide _getBorder(BuildContext context) {
    return WidgetStateBorderSide.resolveWith(
      (states) {
        return BorderSide(
          color: Theme.of(context).colorScheme.primary,
        );
      },
    );
  }

  WidgetStateTextStyle _getStyle() {
    return WidgetStateTextStyle.resolveWith(
      (states) {
        return Styles.textStyle8;
      },
    );
  }

  WidgetStateProperty<Color> _getDayColor() {
    return WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Theme.of(context).colorScheme.surface;
        }
        return Theme.of(context).colorScheme.primary;
      },
    );
  }
}
