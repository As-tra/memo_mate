import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/image_cubit/image_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/add_note_app_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_text_form_field.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_tool_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/image_placeholder.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/note_action_bar.dart';

class AddNoteViewBody extends StatelessWidget {
  const AddNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageCubit(),
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const AddNoteAppBar(),
              SliverPadding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: CustomToolBar(),
                      ),
                      const ImagePlaceholder(),
                      const SizedBox(height: 17),
                      CustomTextFormField(
                        maxlines: 1,
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
                        maxlines: null,
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
                      const SizedBox(height: 150),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: NoteActionsBar(),
          ),
        ],
      ),
    );
  }
}
