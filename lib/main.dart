import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memo_mate/features/home/presentation/manager/tags_cubit/tags_cubit.dart';
import 'package:memo_mate/core/theme/theme.dart';
import 'package:memo_mate/features/home/presentation/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
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
