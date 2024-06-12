import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:memo_mate/core/utils/app_router.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/home_view_body.dart';

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
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Lottie.asset('assets/animations/wave.json'),
          ),
          const Positioned(
            bottom: 26,
            right: 27,
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
