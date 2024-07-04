import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Tools_cubit/tools_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/add_note_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => ToolsCubit(),
        child: const AddNoteViewBody(),
      ),
    );
  }
}
