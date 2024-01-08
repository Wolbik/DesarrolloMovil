import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search for Products',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            ),
            prefixIcon: SvgPicture.asset('assets/icons/search.svg')
        ),
      ),
    );
  }
}