import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memo_mate/core/theme/theme.dart';
import 'package:memo_mate/core/utils/app_router.dart';
import 'package:memo_mate/features/home/presentation/manager/tags_cubit/tags_cubit.dart';

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
      child: ScreenUtilInit(
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          themeMode: ThemeMode.system,
          theme: darkMode,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}