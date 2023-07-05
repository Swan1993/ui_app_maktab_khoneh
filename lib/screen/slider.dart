//lib
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//const
import 'package:ui_app_maktabkhoneh/const/constant.dart';
import 'package:ui_app_maktabkhoneh/const/list_country.dart';

class SliderCarousel extends StatelessWidget {
  const SliderCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: contryList.map((item) {
        return Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(medium),
            image: DecorationImage(
                image: Image.asset(item['image'] as String).image,
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(medium),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: searchBarColor,
                      borderRadius: BorderRadius.circular(small),
                    ),
                    child: const Icon(
                      Icons.visibility,
                      color: surfaceTextColor,
                    ),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item['title'],
                    style: Constant.textStyleCeterPic,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  item['description'],
                  style: Constant.textStyleCeterT2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: small),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage:
                            Image.asset("assets/image/user.png").image,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: medium),
                        child: Text(
                          item["writer"],
                          style: Constant.textStyleCeterT2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        height: MediaQuery.of(context).size.height * 0.42,
        viewportFraction: 0.7,
      ),
    );
  }
}
