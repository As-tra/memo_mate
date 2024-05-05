import 'package:flutter/material.dart';
import 'package:memo_mate/widgets/custom_search_bar.dart';
import 'package:memo_mate/widgets/date_bar.dart';
import 'package:memo_mate/widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 32,
        ),
        child: Column(
          children: [
            HomeViewAppBar(),
            SizedBox(height: 17),
            CustomSearchBar(),
            SizedBox(height: 17),
            DateBar(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        hoverColor: const Color(0xFFFBBC18),
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
