
import 'package:flutter/material.dart';
import 'package:memo_mate/widgets/custom_text.dart';

class DateShowCard extends StatelessWidget {
  const DateShowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          
        ),
        borderRadius: BorderRadius.circular(11),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: 'Mon',
            size: 7,
          ),
          CustomText(
            text: '27',
          ),
          CustomText(
            text: 'Apr',
            size: 7,
          )
        ],
      ),
    );
  }
}