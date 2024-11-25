import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/core/utils/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/manager/Label_Cubit/label_cubit.dart';

class AddLabelForm extends StatefulWidget {
  const AddLabelForm({super.key});

  @override
  State<AddLabelForm> createState() => _AddLabelFormState();
}

class _AddLabelFormState extends State<AddLabelForm> {
  final GlobalKey<FormState> formeKey = GlobalKey();
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formeKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Label Name',
            style: Styles.textStyle14.copyWith(
              fontFamily: kComfortaa,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const SizedBox(height: 6),
          TextFormField(
            controller: _controller,
            onFieldSubmitted: (value) {
              if (formeKey.currentState!.validate()) {
                BlocProvider.of<LabelCubit>(context).addLabel(label: value);
                _controller.clear();
              }
            },
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return '* Field is Required';
              } else {
                return null;
              }
            },
            style: Styles.textStyle14.copyWith(
              fontFamily: kComfortaa,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            cursorColor: Theme.of(context).colorScheme.onPrimary,
            decoration: InputDecoration(
              hintText: 'Example:Important,etc........',
              hintStyle: Styles.textStyle14.copyWith(
                color: const Color(0xFFC8C5CB),
              ),
              border: _buildBorder(),
              enabledBorder: _buildBorder(),
              focusedBorder: _buildBorder(),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Press “Enter” on Keyboread  to create another lebel.',
            style: Styles.textStyle9.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFC8C5CB)),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
