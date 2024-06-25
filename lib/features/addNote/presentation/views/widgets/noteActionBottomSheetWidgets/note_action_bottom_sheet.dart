import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Color_cubit/color_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Label_Cubit/label_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Note_type_cubit/note_type_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/change_note_type.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_action_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/custom_alert_dialog.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/custom_color_palette.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/custom_extras_action.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/give_label_bottom_sheet.dart';

class NoteActionsBottomSheet extends StatelessWidget {
  const NoteActionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 18,
          right: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCloseButton(
              onpressed: () {
                Navigator.of(context).pop();
              },
            ),
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
            CustomExtraAction(
              ontap: () {
                Navigator.of(context).pop();
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  builder: (context) {
                    return const GiveLabelBottomSheet();
                  },
                );
              },
              icon: Icons.sell_outlined,
              actionText: 'Give Label',
              valueText: BlocProvider.of<LabelCubit>(context).labelsList.isEmpty
                  ? 'Not set '
                  : BlocProvider.of<LabelCubit>(context).labelsList[0],
            ),
            const SizedBox(height: 8),
            BlocBuilder<NoteTypeCubit, String>(
              builder: (context, state) {
                return CustomExtraAction(
                  ontap: () {
                    Navigator.of(context).pop();
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      builder: (context) {
                        return ChangeNoteType(
                          type: state,
                        );
                      },
                    );
                  },
                  icon: Icons.edit_calendar_outlined,
                  actionText: 'Change Note Type',
                  valueText: state,
                );
              },
            ),
            const SizedBox(height: 8),
            CustomExtraAction(
              ontap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CustomAlertDialog(
                      title: 'Set Password',
                      bgColor: const Color(0xFF3B484A).withOpacity(0.07),
                      content:
                          'Before access private folder you need to det private folder password. This helps you to access private Note, Image,Voice etc..',
                      confirmText: 'Pass code',
                      showCheckBox: false,
                      fn: () {},
                      icon: AssetsData.lockIcon,
                    );
                  },
                );
              },
              icon: Icons.lock_open,
              actionText: 'Private Note',
              valueText: 'Open ',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
                thickness: 1.13,
              ),
            ),
            CustomActionButton(
              string: 'Delete Note',
              icon: Icons.delete_outline,
              onpressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CustomAlertDialog(
                      title: 'Delete Note',
                      bgColor: const Color(0xFFF9BEC8),
                      content: 'Are you sure you want to delete this note ?',
                      confirmText: 'Yes,Delete',
                      showCheckBox: true,
                      fn: () {
                        Navigator.popUntil(
                            context, (route) => route.settings.name == "/");
                      },
                      icon: AssetsData.trashIocn,
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
