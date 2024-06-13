import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Color_cubit/color_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_action_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_color_palette.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_extras_action.dart';

class NoteActionsBottomSheet extends StatelessWidget {
  const NoteActionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomCloseButton(),
          const SizedBox(height: 6),
          Text(
            'NOTE COLOR',
            style: Styles.textStyle10.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const SizedBox(height: 19),
          BlocProvider(
            create: (context) => ColorCubit(),
            child: const CustomColorsPalette(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
              thickness: 1.13,
            ),
          ),
          Text(
            'EXTRAS',
            style: Styles.textStyle10.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const SizedBox(height: 19),
          const CustomExtraAction(
            icon: Icons.sell_outlined,
            actionText: 'Give Label',
            valueText: 'Not set ',
          ),
          const SizedBox(height: 8),
          const CustomExtraAction(
            icon: Icons.edit_calendar_outlined,
            actionText: 'Change Note Type',
            valueText: 'Entertaiment ',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
              thickness: 1.13,
            ),
          ),
          const CustomActionButton(),
        ],
      ),
    );
  }
}
