import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/features/addNote/data/note_type.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/note_type_list_view_item.dart';

class NoteTypeListView extends StatelessWidget {
  const NoteTypeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        itemCount: knotesTypes.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(6.0),
            child: NoteTypeListViewItem(
              type: NoteType.fromJson(knotesTypes[index]),
            ),
          );
        },
      ),
    );
  }
}
