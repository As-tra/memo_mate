import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class AddLabelForm extends StatefulWidget {
  const AddLabelForm({super.key});

  @override
  State<AddLabelForm> createState() => _AddLabelFormState();
}

class _AddLabelFormState extends State<AddLabelForm> {
  final GlobalKey<FormState> formeKey = GlobalKey();
  String? tag;

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
            onSaved: (newValue) {
              tag = newValue;
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
