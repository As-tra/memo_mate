import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
            side: BorderSide(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 2,
            ),
            value: checked,
            onChanged: (value) {
              setState(() {
                checked = value;
              });
            }),
        Text(
          'Delete permanently',
          style: Styles.textStyle16.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
