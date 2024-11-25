import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Add_note/add_note_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Color_cubit/color_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Favorite_cubit.dart/favorite_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Label_Cubit/label_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Lock_cubit/lock_note_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Note_type_cubit/note_type_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/image_cubit/image_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/logic/get_current_date.dart';
import 'package:memo_mate/features/addNote/presentation/views/logic/show_modal_bottom_sheet.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:memo_mate/features/home/presentation/manager/notes_cubit/notes_cubit.dart';

class NoteActionsBar extends StatelessWidget {
  final TextEditingController titleController;
  final QuillController noteContentController;
  const NoteActionsBar({
    super.key,
    required this.titleController,
    required this.noteContentController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildActionButton(
          icon: Icons.check_circle,
          onpressed: () {
            BlocProvider.of<AddNoteCubit>(context).addNote(
              note: NoteModel(
                imagePath: BlocProvider.of<ImageCubit>(context).imagePath,
                title: titleController.text,
                category: BlocProvider.of<NoteTypeCubit>(context).state,
                tags: BlocProvider.of<LabelCubit>(context).labelsList,
                code: BlocProvider.of<LockNoteCubit>(context).code,
                dateOfCreation: DateTime.now(),
                dateOfLastEdit: DateTime.now(),
                deadline: DateTime.now(),
                isFavorite: BlocProvider.of<FavoriteCubit>(context).state,
                isSecured: BlocProvider.of<LockNoteCubit>(context).locked,
                content: noteContentController.document.toPlainText(),
                color: BlocProvider.of<ColorCubit>(context)
                    .noteColors[
                        BlocProvider.of<ColorCubit>(context).currentColor]
                    .value,
              ),
            );
            BlocProvider.of<NotesCubit>(context).getNotes();
            Navigator.popUntil(context, (route) => route.settings.name == "/");
          },
        ),
        _buildActionButton(
          icon: Icons.mic,
          onpressed: () {},
        ),
        _buildActionButton(
          icon: Icons.draw_outlined,
          onpressed: () {},
        ),
        _buildActionButton(
          icon: Icons.add_photo_alternate_outlined,
          onpressed: () {
            BlocProvider.of<ImageCubit>(context).openImagePicker();
          },
        ),
        const Spacer(),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            getCurrentDate(),
            style: Styles.textStyle12.copyWith(
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        _buildActionButton(
          icon: Icons.more_vert,
          onpressed: () {
            customShowModalBottmoSheet(context);
          },
        ),
      ],
    );
  }

  IconButton _buildActionButton({required icon, required onpressed}) {
    return IconButton(
      onPressed: onpressed,
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      constraints: const BoxConstraints(),
      icon: Icon(
        icon,
        size: 26,
      ),
    );
  }
}
