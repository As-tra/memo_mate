import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeField extends StatelessWidget {
  final void Function(String)? oncomplete;
  const CustomPinCodeField({
    super.key,
    required this.oncomplete,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      autoFocus: true,
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
      onCompleted: oncomplete,
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
