import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Tools_cubit/tools_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_tool_bar_icon.dart';

class CustomToolBar extends StatelessWidget {
  const CustomToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: BlocBuilder<ToolsCubit, ToolsState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0;
                  i < BlocProvider.of<ToolsCubit>(context).icons.length;
                  i++)
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<ToolsCubit>(context).selectTool(index: i);
                  },
                  child: CustomToolBarIcon(
                    icon: BlocProvider.of<ToolsCubit>(context).icons[i],
                    iconColor:
                        BlocProvider.of<ToolsCubit>(context).selectedTool == i
                            ? Colors.black
                            : Theme.of(context).colorScheme.onPrimary,
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}
