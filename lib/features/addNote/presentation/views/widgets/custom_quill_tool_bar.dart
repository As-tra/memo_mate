import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class CustomQuillToolBar extends StatelessWidget {
  const CustomQuillToolBar({
    super.key,
    required QuillController controller,
  }) : _controller = controller;

  final QuillController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        // color: Theme.of(context).colorScheme.primary,
      ),
      child: QuillToolbar.simple(
        configurations: QuillSimpleToolbarConfigurations(
          buttonOptions:
              const QuillSimpleToolbarButtonOptions(
            base: QuillToolbarBaseButtonOptions(
                // iconTheme: QuillIconTheme(
                //   iconButtonSelectedData: const IconButtonData(
                //     color: Colors.black,
                //   ),
                //   iconButtonUnselectedData: IconButtonData(
                //     color:
                //         Theme.of(context).colorScheme.onPrimary,
                //   ),
                // ),
                ),
          ),
          showClipboardCopy: false,
          showRedo: false,
          showUndo: false,
          showAlignmentButtons: true,
          showHeaderStyle: false,
          showDividers: false,
          showInlineCode: false,
          showSubscript: false,
          showSuperscript: false,
          showClipboardCut: false,
          showClipboardPaste: false,
          showSearchButton: false,
          showListBullets: false,
          showListCheck: false,
          showListNumbers: false,
          showQuote: false,
          showLink: false,
          showIndent: false,
          showStrikeThrough: false,
          showCodeBlock: false,
          controller: _controller,
          sharedConfigurations:
              const QuillSharedConfigurations(
            locale: Locale('en'),
          ),
        ),
      ),
    );
  }
}
