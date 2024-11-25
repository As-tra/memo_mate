import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/custom_check_box.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final Color bgColor;
  final String content;
  final String confirmText;
  final bool showCheckBox;
  final VoidCallback fn;
  final String icon;
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.bgColor,
    required this.content,
    required this.confirmText,
    required this.showCheckBox,
    required this.fn,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.primary,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 36.w,
        vertical: 16,
      ),
      actionsAlignment: MainAxisAlignment.spaceAround,
      icon: CircleAvatar(
        backgroundColor: bgColor,
        radius: 28.r,
        child: SvgPicture.asset(
          icon,
          height: 40,
        ),
      ),
      title: Text(
        title,
        style: Styles.textStyle20.copyWith(
          fontFamily: kInter,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            content,
            textAlign: TextAlign.center,
            style: Styles.textStyle16.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 20),
          Visibility(
            visible: showCheckBox,
            child: const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: CustomCheckBox(),
            ),
          ),
        ],
      ),
      actions: [
        CustomButton(
          bgColor: Theme.of(context).colorScheme.primary,
          textColor: Theme.of(context).colorScheme.onPrimary,
          ontap: () {
            Navigator.of(context).pop();
          },
          text: 'Cancel',
        ),
        CustomButton(
          ontap: fn,
          bgColor: Theme.of(context).colorScheme.onPrimary,
          textColor: Theme.of(context).colorScheme.secondary,
          text: confirmText,
        )
      ],
    );
  }
}
