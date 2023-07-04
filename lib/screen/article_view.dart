import 'package:flutter/material.dart';
import 'package:ui_app_maktabkhoneh/const/constant.dart';
import 'package:ui_app_maktabkhoneh/const/list_country.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98,
      //  width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: contryList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: small, right: small, top: small),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 80,
              width: 76,
              decoration: BoxDecoration(
                color: Colors.pink.shade900,
                borderRadius: BorderRadius.circular(medium),
                image: DecorationImage(
                  image: AssetImage(contryList[index]['image']),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: small),
                child: Text(
                  contryList[index]['contry'],
                  style: Constant.avatarTextStyleNameLite,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
