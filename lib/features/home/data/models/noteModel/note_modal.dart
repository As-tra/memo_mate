import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class NoteModal extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  final String dateOfCreation;
  @HiveField(3)
  String dateOfLastEdit;
  @HiveField(4)
  String category;

  NoteModal({
    required this.title,
    required this.content,
    required this.dateOfCreation,
    required this.dateOfLastEdit,
    required this.category,
  });
}
