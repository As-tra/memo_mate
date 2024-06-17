import 'package:flutter/material.dart';

class CustomCloseButton extends StatelessWidget {
  final VoidCallback onpressed;
  final double radius;
  const CustomCloseButton({
    super.key,
    required this.onpressed,
    this.radius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          radius: radius,
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
