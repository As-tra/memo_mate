part of 'add_note_cubit.dart';

sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

final class AddNoteFailure extends AddNoteState {
  final String message;

  AddNoteFailure({required this.message});

 
}
