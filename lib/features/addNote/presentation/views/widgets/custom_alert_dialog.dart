import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_check_box.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
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
        backgroundColor: const Color(0xFFF9BEC8),
        radius: 28.r,
        child: SvgPicture.asset(AssetsData.trashIocn),
      ),
      title: Text(
        'Delete Note',
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
            'Are you sure you want to delete this note ?',
            textAlign: TextAlign.center,
            style: Styles.textStyle16.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 20),
          const CustomCheckBox(),
          const SizedBox(height: 20),
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
          ontap: () {
            Navigator.popUntil(context, (route) => route.settings.name == "/");
          },
          bgColor: Theme.of(context).colorScheme.onPrimary,
          textColor: Theme.of(context).colorScheme.secondary,
          text: 'Yes,Delete',
        )
      ],
    );
  }
}
