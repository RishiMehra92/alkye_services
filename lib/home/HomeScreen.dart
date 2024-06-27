import 'package:alkye_services/util/scillanarrow_text.dart';
import 'package:alkye_services/util/strawford_text.dart';
import 'package:flutter/material.dart';
import 'view/SocialConnect.dart';
import 'view/ArticleList.dart';
import 'view/ArticleListHorizontal.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8),
          child: Image.asset("assets/logo.png"),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              const Spacer(), // Pushes the search bar to the right
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle:
                        TextStyle(color: Colors.grey, fontFamily: "Strawford"),
                    suffixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ArticleListHorizontal(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: ScillaNarrowText(
                text: 'Recent Articles',
                size: 24,
                weight: FontWeight.bold,
              ),
            ),
            ArticleList(),
           Align(
               alignment: Alignment.topCenter,
               child:  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 50),
              child:TextButton(
                onPressed: () {},
                child: const StrawfordText(text: 'View all'),
              ),
            )),
            SizedBox(height: 10,),
            SocialConnect(),
          ],
        ),
      ),
    );
  }
}
