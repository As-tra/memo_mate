import 'package:memo_mate/features/home/data/models/dateModel/date_modal.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_modal.dart';

abstract class HomeRepo {
  List<NoteModal> getNotesByTitle({required String title});
  List<NoteModal> getNotesByDate({required Date date});
  List<NoteModal> getNotesByCategory({required String category});
}
