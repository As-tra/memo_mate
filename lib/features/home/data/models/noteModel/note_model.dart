import 'package:hive/hive.dart';

part 'note_model.g.dart';


@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String category;
  @HiveField(2)
  final List<String> tags;
  @HiveField(3)
  final bool isSecured;
  @HiveField(4)
  final int? code;
  @HiveField(5)
  final DateTime dateOfCreation;
  @HiveField(6)
  final DateTime dateOfLastEdit;
  @HiveField(7)
  final DateTime deadline;
  @HiveField(8)
  final bool isFavorite;
  @HiveField(9)
  final dynamic content;
  @HiveField(10)
  final int color;

  NoteModel({
    required this.title,
    required this.category,
    required this.tags,
    required this.code,
    required this.dateOfCreation,
    required this.dateOfLastEdit,
    required this.deadline,
    required this.isFavorite,
    required this.isSecured,
    required this.content,
    required this.color,
  });
}
