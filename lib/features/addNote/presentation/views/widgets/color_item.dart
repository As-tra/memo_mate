import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Color_cubit/color_cubit.dart';

class ColorItem extends StatelessWidget {
  final Color color;
  final int index;
  const ColorItem({
    super.key,
    required this.color,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return index == BlocProvider.of<ColorCubit>(context).currentColor
        ? CircleAvatar(
            radius: 19,
            backgroundColor: Theme.of(context).colorScheme.background,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 18,
            backgroundColor: color,
          );
  }
}
