import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/home/presentation/manager/notes_cubit/notes_cubit.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        onChanged: (value) {
          BlocProvider.of<NotesCubit>(context).filterNotes(value);
        },
        style: Styles.textStyle15.copyWith(
          fontWeight: FontWeight.w500,
          height: 1,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        cursorColor: Theme.of(context).colorScheme.onPrimary,
        decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            AssetsData.searchIcon,
            fit: BoxFit.scaleDown,
            height: 24,
            width: 24,
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.onPrimary,
              BlendMode.srcIn,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search for notes',
          hintStyle: Styles.textStyle11.copyWith(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          border: _buildBorder(),
          focusedBorder: _buildBorder(),
          enabledBorder: _buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    );
  }
}
