import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/lock_note_veiw_body.dart';

class LockNoteView extends StatelessWidget {
  const LockNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: SvgPicture.asset(AssetsData.closeIcon),
          ),
        ],
      ),
      body: const LockNoteViewBody(),
    );
  }
}
