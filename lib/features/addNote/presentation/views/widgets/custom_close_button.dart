
import 'package:flutter/material.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    super.key,
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
            onPressed: () {
              Navigator.of(context).pop();
            },
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
