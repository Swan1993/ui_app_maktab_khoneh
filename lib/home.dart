//lib
import 'package:flutter/material.dart';

//const
import 'package:ui_app_maktabkhoneh/const/constant.dart';
import 'package:ui_app_maktabkhoneh/screen/bottom_navigations_bar.dart';
import 'package:ui_app_maktabkhoneh/screen/home_nav_bottom.dart';
import 'package:ui_app_maktabkhoneh/screen/profile.dart';
import 'package:ui_app_maktabkhoneh/screen/star.dart';

//widget

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndexNav = 0;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(
                bottom: zero,
                right: zero,
                left: zero,
                child: Container(
                  // width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: gradiantColor,
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              IndexedStack(
                index: selectedIndexNav,
                children: const [
                  HomeNavBottom(),
                  Star(),
                  Profile(),
                ],
              ),
              const BottomNavigationsBar(),
            ],
          ),
        ),
      ),
    );
  }
}
