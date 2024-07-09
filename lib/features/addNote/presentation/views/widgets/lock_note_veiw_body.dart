import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memo_mate/core/utils/app_router.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/core/widgets/custom_pin_code_field.dart';

class LockNoteViewBody extends StatelessWidget {
  const LockNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 33),
        const Text(
          'Enter Your PIN',
          style: Styles.textStyle22,
        ),
        const SizedBox(height: 42),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: CustomPinCodeField(
            oncomplete: (value) {
              GoRouter.of(context)
                  .push(AppRouter.kConfirmLockView, extra: value);
            },
          ),
        ),
      ],
    );
  }
}

