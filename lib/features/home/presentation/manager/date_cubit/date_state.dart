part of 'date_cubit.dart';

sealed class DateState {}

final class DateCubitInitial extends DateState {}

final class DateCubitSuccess extends DateState {
  final List<NoteModel> notes;
  DateCubitSuccess({required this.notes});
}

final class DateCubitFailure extends DateState {
  final String errorMessage;
  DateCubitFailure({required this.errorMessage});
}