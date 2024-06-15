import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/image_cubit/image_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/note_action_bottom_sheet.dart';

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
            
          },
        ),
        _buildActionButton(
          icon: Icons.lock_open,
          onpressed: () {},
        ),
        _buildActionButton(
          icon: Icons.edit,
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
            _showModalBottmoSheet(context);
          },
        ),
      ],
    );
  }

  Future<dynamic> _showModalBottmoSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Theme.of(context).colorScheme.primary,
      context: context,
      builder: (context) {
        return const NoteActionsBottomSheet();
      },
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
