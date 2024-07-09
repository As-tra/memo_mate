
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/core/widgets/custom_pin_code_field.dart';

class CustomTapPinCodeBottomSheet extends StatefulWidget {
  const CustomTapPinCodeBottomSheet({
    super.key,
  });

  @override
  State<CustomTapPinCodeBottomSheet> createState() => _CustomTapPinCodeBottomSheetState();
}

class _CustomTapPinCodeBottomSheetState extends State<CustomTapPinCodeBottomSheet> {


  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: SvgPicture.asset(AssetsData.closeIcon),
              ),
            ],
          ),
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
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
