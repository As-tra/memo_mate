import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';

class AddNoteAppBar extends StatefulWidget {
  const AddNoteAppBar({super.key});

  @override
  State<AddNoteAppBar> createState() => _AddNoteAppBarState();
}

class _AddNoteAppBarState extends State<AddNoteAppBar> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      pinned: true,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
            child: SvgPicture.asset(
              isLiked ? AssetsData.filledHeartIcon : AssetsData.emptyHeartIcon,
            ),
          ),
        ),
      ],
    );
  }
}
