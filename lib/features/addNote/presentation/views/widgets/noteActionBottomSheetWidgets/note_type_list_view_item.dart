import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/data/note_type.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Note_type_cubit/note_type_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/cusotm_snack_bar.dart';

class NoteTypeListViewItem extends StatelessWidget {
  final NoteType type;
  final String currentType;
  const NoteTypeListViewItem(
      {super.key, required this.type, required this.currentType});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pop();
        BlocProvider.of<NoteTypeCubit>(context)
            .changeNoteType(noteType: type.title);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            behavior: SnackBarBehavior.floating,
            content: CustomSnackBar(
              type: type.title,
            ),
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: currentType == type.title
            ? BorderSide(
                color: type.textColor,
                width: 1.5,
              )
            : BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      tileColor: type.bgColor,
      title: Text(
        type.title,
        style: Styles.textStyle16,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          type.description,
          style: Styles.textStyle12.copyWith(
            fontFamily: kInter,
            color: type.textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      leading: CircleAvatar(
        radius: 23,
        backgroundColor: type.textColor,
        child: Icon(
          type.icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
