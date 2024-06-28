import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/confirm_lock_note_body.dart';

class ConfirmNoteLockView extends StatelessWidget {
  const ConfirmNoteLockView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: SvgPicture.asset(AssetsData.closeIcon),
          ),
        ],
      ),
      body: const ConfirmNoteLockViewBody(),
    );
  }
}
