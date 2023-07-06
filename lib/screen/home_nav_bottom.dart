import 'package:flutter/material.dart';
import 'package:ui_app_maktabkhoneh/const/constant.dart';
import 'package:ui_app_maktabkhoneh/screen/article_view.dart';
import 'package:ui_app_maktabkhoneh/screen/search_box.dart';
import 'package:ui_app_maktabkhoneh/screen/slider.dart';
import 'package:ui_app_maktabkhoneh/screen/user_info.dart';

class HomeNavBottom extends StatelessWidget {
  const HomeNavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UserInfo(),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: bodymargin),
            child: Text(
              "New Articles",
              style: Constant.avatarTextStyleName,
            ),
          ),
        ),
        ArticlesView(),
        SearchBox(),
        SliderCarousel(),
      ],
    );
  }
}
