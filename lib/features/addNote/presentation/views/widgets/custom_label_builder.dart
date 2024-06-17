import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Label_Cubit/label_cubit.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_label_item.dart';

class CustomLabelsBuilder extends StatelessWidget {
  const CustomLabelsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LabelCubit, LabelState>(
      builder: (context, state) {
        return Wrap(
          children: [
            for (var lable in BlocProvider.of<LabelCubit>(context).labelsList)
              CustomLabelItem(label: lable)
          ],
        );
      },
    );
  }
}
