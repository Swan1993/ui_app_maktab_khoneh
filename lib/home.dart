//lib
import 'package:flutter/material.dart';

import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

//const
import 'package:ui_app_maktabkhoneh/const/constant.dart';
import 'package:ui_app_maktabkhoneh/const/list_country.dart';

//widget
import 'package:ui_app_maktabkhoneh/screen/user_info.dart';
import 'package:ui_app_maktabkhoneh/screen/article_view.dart';
import 'package:ui_app_maktabkhoneh/screen/search_box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const UserInfo(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: bodymargin),
                  child: Text(
                    "New Articles",
                    style: Constant.avatarTextStyleName,
                  ),
                ),
              ),
              const ArticlesView(),
              const SearchBox(),
              FanCarouselImageSlider(
                imagesLink:
                    contryList.map((item) => item['image'] as String).toList(),
                isAssets: true,
                autoPlay: false,
                imageRadius: large,
                sliderHeight: MediaQuery.of(context).size.height * 0.4,
                expandedCloseBtn: const Text("data"),
                initalPageIndex: 2,
                showIndicator: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
