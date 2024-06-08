import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/service_locator.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:memo_mate/features/home/presentation/manager/tags_cubit/tags_cubit.dart';
import 'package:memo_mate/core/theme/theme.dart';
import 'package:memo_mate/features/home/presentation/views/home_view.dart';

void main() async {
  
  setup();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  var box = await Hive.openBox<NoteModel>(kNoteBox);
  // box.add(
  //   NoteModel(
  //       title: 'do you homework',
  //       category: 'All',
  //       tags: ['Top Priority', 'Important'],
  //       code: 0,
  //       dateOfCreation: DateTime.now(),
  //       dateOfLastEdit: DateTime.now(),
  //       deadline: DateTime.now(),
  //       isFavorite: false,
  //       isSecured: false,
  //       content: 'all listeners are notified again with the old values.',
  //       color: Colors.blue.value),
  // );
  runApp(const MemoMate());
}

class MemoMate extends StatelessWidget {
  const MemoMate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TagsCubit(),
        ),
      ],
      child: MaterialApp(
        themeMode: ThemeMode.system,
        theme: darkMode,
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
