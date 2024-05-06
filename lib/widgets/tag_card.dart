import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/cubits/tags_cubit/tags_cubit.dart';
import 'package:memo_mate/widgets/custom_text.dart';

class TagCard extends StatelessWidget {
  final String text;
  final Color color;
  final int index;
  const TagCard({
    super.key,
    required this.text,
    required this.color,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<TagsCubit>(context).selectTagItem(index);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.only(
          right: index != 9 ? 7 : 0,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(11),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              color: color,
              text: text,
              size: 7,
            ),
          ],
        ),
      ),
    );
  }
}
