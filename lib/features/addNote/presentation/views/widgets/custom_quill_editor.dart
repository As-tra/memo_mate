import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomQuillEditor extends StatelessWidget {
  const CustomQuillEditor({
    super.key,
    required QuillController controller,
  }) : _controller = controller;

  final QuillController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context)
            .colorScheme
            .primary
            .withOpacity(0.05),
        borderRadius: BorderRadius.circular(5),
      ),
      child: QuillEditor.basic(
        configurations: QuillEditorConfigurations(
          padding: const EdgeInsets.symmetric(
              vertical: 16, horizontal: 8),
          placeholder: 'Notes...',
          controller: _controller,
          customStyles: DefaultStyles(
            placeHolder: DefaultTextBlockStyle(
                Styles.textStyle16.copyWith(
                  fontFamily: kComfortaa,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withOpacity(0.6),
                ),
                const VerticalSpacing(0, 0),
                const VerticalSpacing(0, 0),
                null),
          ),
        ),
      ),
    );
  }
}