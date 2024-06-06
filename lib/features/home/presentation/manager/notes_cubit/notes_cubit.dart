import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:memo_mate/features/home/data/repos/home_repo.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit(this.homeRepo) : super(NoteInitial());
  final HomeRepo homeRepo;
  List<NoteModel> notes = [];

  void fetchNotesByDate({required DateTime date}) {
    var results = homeRepo.getNotesByDate(date: date);
    results.fold(
      (failure) {
        emit(NoteFailure(
          errorMessage: failure.errorMessage,
        ));
      },
      (success) {
        if (results.length() > 0) {
          emit(NoteSuccess(notes: notes));
        } else {
          emit(NoteEmpty());
        }
      },
    );
  }
}
