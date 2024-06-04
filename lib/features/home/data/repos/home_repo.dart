import 'package:memo_mate/features/home/data/models/noteModel/note_modal.dart';

abstract class HomeRepo {
  List<NoteModal> getNotesByTitle({required String title});
  List<NoteModal> getNotesByTag({required String tag});
  List<NoteModal> getNotesByCategory({required String category});
}
