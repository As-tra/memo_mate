import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Color_cubit/color_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/color_item.dart';

class CustomColorsPalette extends StatelessWidget {
  const CustomColorsPalette({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorCubit(),
      child: BlocBuilder<ColorCubit, int>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0;
                  i < BlocProvider.of<ColorCubit>(context).noteColors.length;
                  i++)
                GestureDetector(
                  onTap: () => BlocProvider.of<ColorCubit>(context)
                      .selectColor(index: i),
                  child: ColorItem(
                    color: BlocProvider.of<ColorCubit>(context).noteColors[i],
                    index: i,
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}
