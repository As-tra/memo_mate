import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/home/presentation/manager/tags_cubit/tags_cubit.dart';
import 'package:memo_mate/features/home/presentation/views/widgets/custom_text.dart';

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
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        margin: const EdgeInsets.only(right: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(11),
          color: color,
        ),
        child: CustomText(
          color: color == Colors.transparent ? Colors.white : Colors.black,
          weight:
              color != Colors.transparent ? FontWeight.bold : FontWeight.normal,
          text: text,
          size: 12,
        ),
      ),
    );
  }
}
