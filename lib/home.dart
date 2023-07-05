//lib
import 'package:flutter/material.dart';

//const
import 'package:ui_app_maktabkhoneh/const/constant.dart';
import 'package:ui_app_maktabkhoneh/screen/slider.dart';

//widget
import 'package:ui_app_maktabkhoneh/screen/user_info.dart';
import 'package:ui_app_maktabkhoneh/screen/article_view.dart';
import 'package:ui_app_maktabkhoneh/screen/search_box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
