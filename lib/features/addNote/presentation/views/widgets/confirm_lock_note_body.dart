import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/core/widgets/custom_pin_code_field.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Lock_cubit/lock_note_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmNoteLockViewBody extends StatefulWidget {
  const ConfirmNoteLockViewBody({super.key});

  @override
  State<ConfirmNoteLockViewBody> createState() =>
      _ConfirmNoteLockViewBodyState();
}

class _ConfirmNoteLockViewBodyState extends State<ConfirmNoteLockViewBody> {
  final StreamController<ErrorAnimationType> _errorController =
      StreamController<ErrorAnimationType>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 33),
        const Text(
          'Confirm Your PIN',
          style: Styles.textStyle22,
        ),
        const SizedBox(height: 42),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: CustomPinCodeField(
            oncomplete: (value) {
              if (value != GoRouterState.of(context).extra as String) {
                _errorController.add(ErrorAnimationType.shake);
              } else {
                BlocProvider.of<LockNoteCubit>(context)
                    .addLock(newValue: value);

                // accept the code and save it in the note
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              }
            },
            errorController: _errorController,
          ),
        ),
      ],
    );
  }
}
