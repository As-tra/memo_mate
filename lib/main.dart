import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/cubits/tags_cubit/tags_cubit.dart';
import 'package:memo_mate/theme/theme.dart';
import 'package:memo_mate/views/home_view.dart';

void main() {
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
        theme: darkMode,
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
