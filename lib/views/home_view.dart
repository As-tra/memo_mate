import 'package:flutter/material.dart';
import 'package:memo_mate/widgets/custom_search_bar.dart';
import 'package:memo_mate/widgets/date_bar.dart';
import 'package:memo_mate/widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
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
    );
  }
}


