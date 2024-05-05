import 'package:flutter/material.dart';

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
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontFamily: 'Comfortaa',
        ),
        decoration: InputDecoration(
          prefixIcon: Image.asset('assets/icons/searchnormal1.png'),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search for notes',
          hintStyle: TextStyle(
            fontFamily: 'Comfortaa',
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 11,
            fontWeight: FontWeight.w500,
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
