import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/app_router.dart';
import 'package:memo_mate/core/utils/service_locator.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';
import 'package:memo_mate/features/home/presentation/manager/tags_cubit/tags_cubit.dart';
import 'package:memo_mate/core/theme/theme.dart';

void main() async {
  setup();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
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
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        themeMode: ThemeMode.system,
        theme: darkMode,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
