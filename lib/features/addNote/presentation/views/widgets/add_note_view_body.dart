import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Add_note/add_note_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Tools_cubit/tools_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/manager/image_cubit/image_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/add_note_app_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_label_builder.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_quill_editor.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_quill_tool_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_text_form_field.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/image_placeholder.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/note_action_bar.dart';

class AddNoteViewBody extends StatefulWidget {
  const AddNoteViewBody({super.key});

  @override
  State<AddNoteViewBody> createState() => _AddNoteViewBodyState();
}

class _AddNoteViewBodyState extends State<AddNoteViewBody> {
  final QuillController _controller = QuillController.basic();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ImageCubit(),
        ),
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
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
                      // const Padding(
                      //   padding: EdgeInsets.all(20),
                      //   child: CustomToolBar(),
                      // ),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomQuillToolBar(controller: _controller),
                      const ImagePlaceholder(),
                      const SizedBox(height: 17),
                      CustomTextFormField(
                        controller: BlocProvider.of<ToolsCubit>(context)
                            .titleController,
                        maxlines: 1,
                        hintText: 'Title',
                        style: Styles.textStyle18.copyWith(
                          fontFamily: kComfortaa,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 6.3),
                      CustomQuillEditor(controller: _controller),
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
                      const SizedBox(height: 17.5),
                      const CustomLabelsBuilder(
                        color: Colors.black,
                        showCloseIcon: false,
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
