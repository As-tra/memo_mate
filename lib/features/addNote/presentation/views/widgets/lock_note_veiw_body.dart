import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LockNoteViewBody extends StatelessWidget {
  const LockNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Enter Your PIN',
          style: Styles.textStyle22,
        ),
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
      length: 5,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.transparent,
        activeFillColor: Theme.of(context).colorScheme.primary,
        activeColor: Colors.black,
        inactiveColor: Colors.white,
        shape: PinCodeFieldShape.circle,
        fieldHeight: 52,
        fieldWidth: 52,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      onCompleted: (value) {
        print(value);
      },
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
