import 'package:flutter/material.dart';

class CustomCloseButton extends StatelessWidget {
  final VoidCallback onpressed;
  const CustomCloseButton({
    super.key, required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          radius: 16,
          child: IconButton(
            style: const ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: onpressed,
            icon: Icon(
              size: 15,
              Icons.close,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        )
      ],
    );
  }
}
