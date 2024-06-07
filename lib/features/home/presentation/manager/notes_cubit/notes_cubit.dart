import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:memo_mate/features/home/data/repos/home_repo.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit(this.homeRepo) : super(NoteInitial());
  final HomeRepo homeRepo;
  List<NoteModel> notes = [];

  DateTime currentDate = DateTime.now();
  String currentCategory = 'All';

  void getNotes() {
    var results =
        homeRepo.getNotesByCategoryAndDate(date: currentDate, category: currentCategory);
    results.fold(
      (failure) {
        emit(NoteFailure(
          errorMessage: failure.errorMessage,
        ));
      },
      (success) {
        if (success.isNotEmpty) {
          emit(NoteSuccess(notes: notes));
        } else {
          emit(NoteEmpty());
        }
      },
    );
  }

  @override
  void onChange(Change<NoteState> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change.toString());
  }
}
