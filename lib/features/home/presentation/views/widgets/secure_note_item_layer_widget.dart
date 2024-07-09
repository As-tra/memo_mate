import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';


class SecureNoteItemLayerWidget extends StatelessWidget {
  const SecureNoteItemLayerWidget({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: note.isSecured,
      child: Positioned.fill(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              color: Color(note.color).withOpacity(0.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AssetsData.lockIcon,
                    height: 35,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Secure  Password',
                    style: Styles.textStyle11.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    ' Protection Note',
                    style: Styles.textStyle11.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
