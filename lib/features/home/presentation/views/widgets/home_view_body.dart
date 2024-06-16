import 'package:flutter/material.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/date_bar.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/notes_container.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/tags_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
          [
        const SliverToBoxAdapter(
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
            ],
          ),
        ),
      ],
      body: const NotesContainer(),
    );
  }
}
