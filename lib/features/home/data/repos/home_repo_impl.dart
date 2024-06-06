import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/errors/failures.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:memo_mate/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Either<Failure, List<NoteModel>> getNotesByCategory(
      {required String category, required DateTime date}) {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      // parse notes by category
      List<NoteModel> res = [];
      for (var note in notes) {
        if (note.category == category && note.deadline == date) {
          res.add(note);
        }
      }
      return right(res);
    } catch (e) {
      return left(
        CacheFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Either<Failure, List<NoteModel>> getNotesByDate({required DateTime date}) {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      List<NoteModel> res = [];
      for (var note in notes) {
        if (note.deadline == date) {
          res.add(note);
        }
      }
      return right(res);
    } catch (e) {
      return left(
        CacheFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Either<Failure, List<NoteModel>> getNotesByTitle({
    required String title,
    required DateTime date,
  }) {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      List<NoteModel> res = [];
      for (var note in notes) {
        if (note.title == title && note.deadline == date) {
          res.add(note);
        }
      }
      return right(res);
    } catch (e) {
      return left(
        CacheFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
