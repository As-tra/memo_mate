import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/core/widgets/custom_pin_code_field.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomTapPinCodeBottomSheet extends StatefulWidget {
  final NoteModel note;
  final VoidCallback updateState;
  const CustomTapPinCodeBottomSheet({
    super.key,
    required this.note,
    required this.updateState,
  });

  @override
  State<CustomTapPinCodeBottomSheet> createState() =>
      _CustomTapPinCodeBottomSheetState();
}

class _CustomTapPinCodeBottomSheetState
    extends State<CustomTapPinCodeBottomSheet> {
  final StreamController<ErrorAnimationType> _errorController =
      StreamController<ErrorAnimationType>();
  final TextEditingController _controller = TextEditingController();

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
              errorController: _errorController,
              controller: _controller,
              oncomplete: (value) {
                if (widget.note.code.toString() != value) {
                  _errorController.add(ErrorAnimationType.shake);
                  _controller.clear();
                } else {
                  Navigator.of(context).pop();
                  widget.note.isSecured = false;
                  widget.updateState();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
