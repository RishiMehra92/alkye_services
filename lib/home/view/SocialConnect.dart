import 'package:alkye_services/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'BottomArticleListHorizontal.dart';
import 'package:alkye_services/util/scillanarrow_text.dart';
import 'package:alkye_services/util/strawford_text.dart';

class SocialConnect extends StatefulWidget {
  @override
  _SocialConnectState createState() => _SocialConnectState();
}


class _SocialConnectState extends State<SocialConnect> {
  int selectedIndex = 0;

  void onIconTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: const ScillaNarrowText(
              text: 'Social Connect',
              size: 24,
              color: Colors.white,
              weight: FontWeight.bold,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: const StrawfordText(
                text:
                    'Stay updated with my latest post on your favorite platforms',
                color: Colors.white,
              )),
          const SizedBox(height: 16.0),
          BottomArticleListHorizontal(),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildNavItem(Icons.home, 0),
                buildNavItem(Icons.category, 1),
                buildNavItem(Icons.bookmark, 2),
                buildNavItem(Icons.person, 3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onIconTap(index),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: selectedIndex == index ? Colors.black : Colors.transparent,
        ),
        padding: const EdgeInsets.all(16),
        child: Icon(
          icon,
          color: selectedIndex == index ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
