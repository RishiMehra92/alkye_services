import 'package:flutter/material.dart';
import 'package:alkye_services/util/strawford_text.dart';

class BottomArticleListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 447, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Replace with your dynamic item count
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width *
                0.5, // Adjust the width as needed
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: Image.asset(
                            'assets/car.png',
                            height: 296,
                            width: MediaQuery.of(context).size.width * 0.8,
                            fit: BoxFit.fitHeight,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset(
                          'assets/music.png',
                          scale: 3,
                        ),
                      ),
                    ],
                  ), // Add your image asset
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StrawfordText(
                            text:
                                'The Ultimate Guide To Simplifying Your Routine With Generative AI Automation!'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
