import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memo_mate/core/utils/app_router.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:pulsator/pulsator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.only(
          left: 18.0,
          right: 18,
          top: 22,
        ),
        child: HomeViewBody(),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kAddNoteView);
        },
        child: const PulseIcon(
          icon: Icons.add,
          pulseColor: Colors.white,
          iconColor: Colors.black,
          iconSize: 32,
          innerSize: 50,
          pulseSize: 120,
          pulseCount: 2,
          pulseDuration: Duration(seconds: 4),
        ),
      ),
    );
  }
}
