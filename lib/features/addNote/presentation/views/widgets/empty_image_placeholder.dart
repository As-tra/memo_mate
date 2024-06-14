import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_button.dart';

class EmptyImagePlaceholder extends StatelessWidget {
  const EmptyImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.background.withOpacity(0.4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            child: SvgPicture.asset(AssetsData.imagePlaceholder),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 11.0),
                  child: Text(
                    'Upload an image,To you guidance can be clearer for you.',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle14.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomButton(
            text: 'Choose a file',
            textColor: Theme.of(context).colorScheme.primary,
            bgColor: Theme.of(context).colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }
}
