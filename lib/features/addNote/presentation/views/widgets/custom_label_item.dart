import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Label_Cubit/label_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';

class CustomLabelItem extends StatelessWidget {
  final String label;
  final Color color;
  final bool showCloseIcon;
  const CustomLabelItem({
    super.key,
    required this.label,
    required this.color,
    required this.showCloseIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6, left: 4),
      padding: const EdgeInsets.only(
        top: 3,
        bottom: 3,
        left: 12,
        right: 6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Styles.textStyle12.copyWith(
              fontFamily: kInter,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          const SizedBox(width: 4),
          // here you add the function to delete the label from the cubit and rebuild the ui
          Visibility(
            visible: showCloseIcon,
            child: CustomCloseButton(
              onpressed: () {
                BlocProvider.of<LabelCubit>(context).removeLabel(label: label);
              },
              radius: 14,
            ),
          ),
        ],
      ),
    );
  }
}
