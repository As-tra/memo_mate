import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddNoteViewBody extends StatelessWidget {
  const AddNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 34,
        right: 11,
        left: 11,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: AddNoteAppBar(),
          ),
        ],
      ),
    );
  }
}

class AddNoteAppBar extends StatelessWidget {
  const AddNoteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.arrow_back_ios),
        SvgPicture.asset('assets/icons/empty_heart.svg'),
      ],
    );
  }
}
