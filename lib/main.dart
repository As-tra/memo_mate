import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memo_mate/app/app.dart';
import 'package:memo_mate/core/utils/constants.dart';
import 'package:memo_mate/core/utils/service_locator.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';

void main() async {
  setup();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return const MemoMate();
      },
    ),
  );
}
