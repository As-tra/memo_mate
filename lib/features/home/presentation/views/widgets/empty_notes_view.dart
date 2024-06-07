import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memo_mate/core/utils/styles.dart';

class EmptyNotesContainer extends StatelessWidget {
  const EmptyNotesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('assets/icons/empty_note.svg'),
        Text(
          'There is no notes',
          style: Styles.textStyle32.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/pen.svg'),
            const Text(
              'Make a new one',
              style: Styles.textStyle20,
            ),
          ],
        )
      ],
    );
  }
}
