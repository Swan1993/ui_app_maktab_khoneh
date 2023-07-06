import 'package:flutter/material.dart';
import 'package:ui_app_maktabkhoneh/const/constant.dart';
import 'package:ui_app_maktabkhoneh/const/list_country.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({
    super.key,
  });

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView> {
  var select = 0;
  @override
  void initState() {
    select;
    super.initState();
  }

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
          return Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    select = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: small, right: small, top: small),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    alignment: Alignment.bottomCenter,
                    height: select == index ? 90 : 80,
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
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
