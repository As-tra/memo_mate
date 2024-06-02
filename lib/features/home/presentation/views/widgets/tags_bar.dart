import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/home/presentation/manager/tags_cubit/tags_cubit.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/tag_card.dart';

class TagsBar extends StatelessWidget {
  const TagsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: BlocProvider.of<TagsCubit>(context).tags.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BlocBuilder<TagsCubit, TagsState>(
            builder: (context, state) {
              return TagCard(
                text: BlocProvider.of<TagsCubit>(context).tags[index],
                index: index,
                color: BlocProvider.of<TagsCubit>(context).current == index
                    ? Colors.white
                    : Colors.transparent,
              );
            },
          );
        },
      ),
    );
  }
}
