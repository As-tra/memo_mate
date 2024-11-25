import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:memo_mate/features/home/presentation/manager/notes_cubit/notes_cubit.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/empty_notes_view.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/note_card.dart';

class NotesContainer extends StatefulWidget {
  const NotesContainer({super.key});

  @override
  State<NotesContainer> createState() => _NotesContainerState();
}

class _NotesContainerState extends State<NotesContainer> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NoteSuccess) {
          return SliverMasonryGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            childCount: state.notes.length,
            crossAxisSpacing: 12,
            itemBuilder: (context, index) {
              return NoteCard(
                note: state.notes[index],
              );
            },
          );
        } else if (state is NoteFailure) {
          return const SliverToBoxAdapter(child: Placeholder());
        } else {
          return const SliverToBoxAdapter(child: EmptyNotesContainer());
        }
      },
    );
  }
}
