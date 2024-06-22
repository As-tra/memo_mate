import 'package:flutter_bloc/flutter_bloc.dart';

class NoteTypeCubit extends Cubit<String> {
  NoteTypeCubit() : super('Personal');

  void changeNoteType({required String noteType}) {
    emit(noteType);
  }
}
