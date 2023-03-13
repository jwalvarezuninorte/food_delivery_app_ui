import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.bg,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const TextField(
        cursorColor: Colors.black26,
        decoration: InputDecoration(
          hintText: 'What we can get for you?',
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black26,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
