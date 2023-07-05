//lib
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//const
import 'package:ui_app_maktabkhoneh/const/constant.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: bodymargin, vertical: bodymargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(medium),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: searchBarColor,
                prefixIcon: const Icon(
                  Icons.search,
                  color: surfaceTextColor,
                ),
                hintText: "Search country or list...",
                hintStyle: Constant.textSearchBar,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: small),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: searchBarColor,
                borderRadius: BorderRadius.circular(small),
              ),
              child: SvgPicture.asset(
                'assets/icon/filter.svg',
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
