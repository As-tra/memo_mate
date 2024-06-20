import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Label_Cubit/label_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/logic/show_modal_bottom_sheet.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_action_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/add_label_form.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_label_builder.dart';

class GiveLabelBottomSheet extends StatelessWidget {
  const GiveLabelBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 18,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    customShowModalBottmoSheet(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Text(
                  'Extras',
                  style: Styles.textStyle22.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const Spacer(),
                CustomCloseButton(
                  onpressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),
            const AddLabelForm(),
            const SizedBox(height: 28),
            CustomLabelsBuilder(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            BlocBuilder<LabelCubit, LabelState>(
              builder: (context, state) {
                return Visibility(
                  visible: BlocProvider.of<LabelCubit>(context)
                      .labelsList
                      .isNotEmpty,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Divider(
                          color: Theme.of(context).colorScheme.secondary,
                          thickness: 1.13,
                        ),
                      ),
                      CustomActionButton(
                        string: 'Clear All labels ',
                        icon: Icons.delete_outline,
                        onpressed: () {
                          BlocProvider.of<LabelCubit>(context)
                              .removeAllLabels();
                        },
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
