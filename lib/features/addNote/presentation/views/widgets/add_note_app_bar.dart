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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isLiked = !isLiked;
            });
          },
          child: SvgPicture.asset(
            isLiked ? AssetsData.filledHeartIcon : AssetsData.emptyHeartIcon,
          ),
        ),
      ],
    );
  }
}
