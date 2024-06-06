import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:memo_mate/features/home/presentation/manager/notes_cubit/notes_cubit.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/empty_notes_view.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/note_card.dart';

class NotesContainer extends StatelessWidget {
  const NotesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // List notes = [
    //   'do you homework',
    //   'buy something for your mom',
    //   'help someone with something',
    //   'in the next week you must buy this and this and this and this for your team',
    //   'drink water in the summer and buy some water and',
    //   'in the next week you must buy this and this and this and this for your team in the next week you must buy this and this and this and this for your team',
    //   'in the next week you must buy this and this and this and just some words',
    //   'You may wonder why writing works without async code. This is one of the main strengths of Hive.',
    //   'The changes are written to the disk as soon as possible in the background but all listeners are notified immediately. If the async operation fails (which it should not),',
    //   'all listeners are notified again with the old values.'
    // ];
    return BlocBuilder<NotesCubit, NoteState>(
      builder: (context, state) {
        if (state is NoteSuccess) {
          return MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 13,
            itemCount: state.notes.length,
            crossAxisSpacing: 13,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return NoteCard(
                note: state.notes[index],
              );
            },
          );
        } else if (state is NoteEmpty) {
          return const EmptyNotesContainer();
        } else {
          // here create a custom error widget
          return const Placeholder();
        }
      },
    );
  }
}
