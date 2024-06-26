import 'package:flutter/material.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/text_style_bottom_sheet.dart';

Future<dynamic> customShowModalBottmoSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Theme.of(context).colorScheme.primary,
    context: context,
    builder: (context) {
      return const TextSyleBottomSheet();
    },
  );
}
