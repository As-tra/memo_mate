part of 'notes_cubit.dart';

sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteSuccess extends NoteState {
  final List<NoteModel> notes;
  NoteSuccess({required this.notes});
}
final class NoteEmpty extends NoteState {}


final class NoteFailure extends NoteState {
  final String errorMessage;
  NoteFailure({required this.errorMessage});
}