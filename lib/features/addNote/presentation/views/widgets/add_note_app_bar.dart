import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Favorite_cubit.dart/favorite_cubit.dart';

class AddNoteAppBar extends StatelessWidget {
  const AddNoteAppBar({super.key});

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
        BlocBuilder<FavoriteCubit, bool>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: GestureDetector(
                onTap: () {
                  BlocProvider.of<FavoriteCubit>(context).change();
                },
                child: SvgPicture.asset(
                  state
                      ? AssetsData.filledHeartIcon
                      : AssetsData.emptyHeartIcon,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
