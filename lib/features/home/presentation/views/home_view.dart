import 'package:flutter/material.dart';
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
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        elevation: 16,
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 32,
        ),
        onPressed: () {},
      ),
    );
  }
}
