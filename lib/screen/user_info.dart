import 'package:flutter/material.dart';
import 'package:ui_app_maktabkhoneh/const/constant.dart';
import 'package:ui_app_maktabkhoneh/model/circle_avatar_model.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(bodymargin),
      child: Row(
        children: [
          Stack(
            children: [
              GradientCircleAvatar(
                radius: 40,
                backgroundImage: "assets/image/user.png",
                gradientColors: gradiantColor,
              ),
              const Positioned(
                bottom: zero,
                right: zero,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: primaryColor,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: small),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Welcom Back",
                  style: Constant.avatarTextStyle,
                ),
                Text(
                  "Ariana Grinder",
                  style: Constant.avatarTextStyleName,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
