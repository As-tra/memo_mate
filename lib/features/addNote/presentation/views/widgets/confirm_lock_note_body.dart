
import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmNoteLockViewBody extends StatelessWidget {
  const ConfirmNoteLockViewBody({super.key});

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
      length: 4,
      animationType: AnimationType.fade,
      keyboardType: const TextInputType.numberWithOptions(),
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
        print(value);
      },
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}