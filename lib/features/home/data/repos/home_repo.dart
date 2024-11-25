import 'package:dartz/dartz.dart';
import 'package:memo_mate/core/errors/failures.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';

abstract class HomeRepo {
  Either<Failure, List<NoteModel>> getNotesByTitle(
      {required String title, required DateTime date});

  Either<Failure, List<NoteModel>> getNotesByCategoryAndDate({
    required String category,
    required DateTime date,
  });

  Either<Failure, List<NoteModel>> filterNotesByTitle({
    required String text,
  });
}
