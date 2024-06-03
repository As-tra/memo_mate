import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: Styles.textStyle15.copyWith(
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        decoration: InputDecoration(
          prefixIcon: Image.asset('assets/icons/searchnormal1.png'),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search for notes',
          hintStyle: Styles.textStyle11.copyWith(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
