part of 'notes_cubit.dart';

sealed class NotesState {}

final class NoteInitial extends NotesState {}

final class NoteSuccess extends NotesState {
  final List<NoteModel> notes;
  NoteSuccess({required this.notes});
}

final class NoteEmpty extends NotesState {}

final class NoteFailure extends NotesState {
  final String errorMessage;
  NoteFailure({required this.errorMessage});
}
