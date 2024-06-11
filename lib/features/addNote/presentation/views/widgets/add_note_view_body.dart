import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/add_note_app_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_text_form_field.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_tool_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/image_placeholder.dart';

class AddNoteViewBody extends StatelessWidget {
  const AddNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const AddNoteAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 12.0),
              //   child: AddNoteAppBar(),
              // ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: CustomToolBar(),
              ),
              const ImagePlaceholder(),
              const SizedBox(height: 17),
              CustomTextFormField(
                hintText: 'Title',
                style: Styles.textStyle18.copyWith(
                  fontFamily: kComfortaa,
                ),
              ),
              const SizedBox(height: 6.3),
              CustomTextFormField(
                hintText: 'Notes...',
                style: Styles.textStyle15.copyWith(
                  fontWeight: FontWeight.w300,
                ),
                maxlines: 4,
              ),
              CustomTextFormField(
                hintText: 'Notes...',
                style: Styles.textStyle15.copyWith(
                  fontWeight: FontWeight.w300,
                ),
                maxlines: 4,
              ),
              CustomTextFormField(
                hintText: 'Notes...',
                style: Styles.textStyle15.copyWith(
                  fontWeight: FontWeight.w300,
                ),
                maxlines: 4,
              ),
              CustomTextFormField(
                hintText: 'Notes...',
                style: Styles.textStyle15.copyWith(
                  fontWeight: FontWeight.w300,
                ),
                maxlines: 4,
              ),
              CustomTextFormField(
                hintText: 'Notes...',
                style: Styles.textStyle15.copyWith(
                  fontWeight: FontWeight.w300,
                ),
                maxlines: 4,
              ),
              const SizedBox(height: 13.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Last Changed : Mar 1, 2024 at 2.00AM',
                    style: Styles.textStyle12.copyWith(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
