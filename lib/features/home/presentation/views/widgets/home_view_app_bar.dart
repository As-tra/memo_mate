import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          kTitle,
          style: Styles.textStyle32.copyWith(
            fontFamily: kDancingScript,
          ),
        ),
        SvgPicture.asset('assets/icons/menu.svg'),
      ],
    );
  }
}
