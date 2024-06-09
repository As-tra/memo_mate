
import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';

class CustomToolBarIcon extends StatelessWidget {
  final IconData? icon;
  final void Function()? onpressed;
  const CustomToolBarIcon({
    super.key,
    required this.icon,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onpressed,
      constraints: const BoxConstraints(),
      icon: Icon(
        icon,
        color: Theme.of(context).colorScheme.onPrimary,
        size: kToolBarIconsSize,
      ),
    );
  }
}


// Second solution in case you need to change
// return SizedBox(
//       height: 40,
//       width: 40,
//       child: IconButton(
//         onPressed: onpressed,
//         icon: Icon(
//           icon,
//           color: Theme.of(context).colorScheme.onPrimary,
//           size: kToolBarIconsSize,
//         ),
//       ),
//     );
