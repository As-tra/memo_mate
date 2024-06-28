import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
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
          child: _createPinCodeFields(context),
        ),
      ],
    );
  }

  PinCodeTextField _createPinCodeFields(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      length: 4,
      animationType: AnimationType.fade,
      keyboardType: const TextInputType.numberWithOptions(),
      errorAnimationController: _errorController,
      pinTheme: PinTheme(
        activeColor: kSnackBarColor,
        selectedFillColor: Colors.white,
        selectedColor: Colors.white,
        inactiveColor: Colors.white,
        shape: PinCodeFieldShape.circle,
        fieldHeight: 52,
        fieldWidth: 52,
      ),
      animationDuration: const Duration(milliseconds: 300),
      onCompleted: (value) {
        if (value != GoRouterState.of(context).extra as String) {
          _errorController.add(ErrorAnimationType.shake);
        } else {
          BlocProvider.of<LockNoteCubit>(context).addLock(code: value);

          // accept the code and save it in the note
          Navigator.of(context).pop();
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        }
      },
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
