import 'package:flutter/material.dart';
import 'package:ui_app_maktabkhoneh/const/constant.dart';

class BottomNavigationsBar extends StatelessWidget {
  const BottomNavigationsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bodymargin,
      left: bodymargin,
      child: Container(
        height: 76,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(xLarge),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 4),
              blurRadius: 4,
              blurStyle: BlurStyle.outer,
            ),
          ],
          gradient: LinearGradient(
            colors: bottomNavgradiantColor,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(small),
                child: Container(
                  height: 66,
                  decoration: BoxDecoration(
                      color: scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(xLarge)),
                  child: const Icon(
                    Icons.home,
                    size: 28,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(small),
                child: Container(
                  height: 66,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(xLarge)),
                  child: Icon(
                    Icons.star,
                    size: 28,
                    color: Colors.orange.shade900,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(small),
                child: Container(
                  height: 66,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(xLarge)),
                  child: Icon(
                    Icons.person,
                    size: 28,
                    color: Colors.orange.shade900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
