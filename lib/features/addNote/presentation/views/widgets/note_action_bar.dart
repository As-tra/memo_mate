import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Add_note/add_note_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/image_cubit/image_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/logic/show_modal_bottom_sheet.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:memo_mate/features/home/presentation/manager/notes_cubit/notes_cubit.dart';

class NoteActionsBar extends StatelessWidget {
  const NoteActionsBar({super.key});

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
                imagePath: '',
                title: 'title',
                category: 'category',
                tags: ['tags'],
                code: 1111,
                dateOfCreation: DateTime.now(),
                dateOfLastEdit: DateTime.now(),
                deadline: DateTime.now(),
                isFavorite: true,
                isSecured: true,
                content:
                    'content content content content content content content content',
                color: Colors.red.value,
              ),
            );
            BlocProvider.of<NotesCubit>(context).getNotes();
            Navigator.popUntil(context, (route) => route.settings.name == "/");
          },
        ),
        _buildActionButton(
          icon: Icons.lock_open,
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
        Text(
          'Created: Mar 1, 2024',
          style: Styles.textStyle12.copyWith(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w300,
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
        size: 26.sp,
      ),
    );
  }
}
