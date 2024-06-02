import 'package:flutter/material.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/date_bar.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/notes_part.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/tags_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.only(
          left: 26,
          right: 26,
          top: 32,
        ),
        child: Column(
          children: [
            HomeViewAppBar(),
            SizedBox(height: 17),
            CustomSearchBar(),
            SizedBox(height: 17),
            DateBar(),
            SizedBox(height: 17),
            TagsBar(),
            SizedBox(height: 17),
            NotesPart(),
          ],
        ),
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
