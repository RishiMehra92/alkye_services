import 'package:flutter/material.dart';
import 'package:alkye_services/util/strawford_text.dart';

class ArticleListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 440, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Replace with your dynamic item count
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width *
                0.8, // Adjust the width as needed
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
                            height: 249,
                            width: MediaQuery.of(context).size.width * 0.8,
                            fit: BoxFit.fitWidth,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset(
                          'assets/music.png',
                          scale: 3,
                        ),
                      ),
                      Positioned(
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Image.asset(
                              'assets/star.png',
                              scale: 3,
                            ),
                          ))
                    ],
                  ), // Add your image asset
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 6.0),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              scale: 4,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const StrawfordText(
                                text: 'Technology', color: Colors.black),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const StrawfordText(
                          text: 'Step Into Tomorrow:',
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                        StrawfordText(
                          text:
                              'Exploring Spatial Computing’s Impact On Industries And The Metaverse!',
                          color: Colors.black.withOpacity(0.4),
                        ),
                        const SizedBox(height: 25.0),
                        const StrawfordText(
                            text: '24 Feb 2024', color: Colors.grey),
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
