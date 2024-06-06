import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:memo_mate/features/home/data/repos/home_repo.dart';

part 'date_state.dart';

class DateCubit extends Cubit<DateState> {
  DateCubit(this.homeRepo) : super(DateCubitInitial());
  final HomeRepo homeRepo;
  int current = 0;
  List<NoteModel> notes = [];

  void fetchNotesByDate({required int index, required DateTime date}) {
    current = index;
    var results = homeRepo.getNotesByDate(date: date);
    results.fold(
      (failure) => emit(DateCubitFailure(
        errorMessage: failure.errorMessage,
      )),
      (success) => emit(
        DateCubitSuccess(notes: notes),
      ),
    );
  }
}
