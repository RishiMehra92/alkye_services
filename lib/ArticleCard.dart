import 'package:flutter/material.dart';
import 'package:alkye_services/util/strawford_text.dart';

class ArticleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Card(
        color: Colors.white,
        shadowColor: Colors.grey,
        margin: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(12)),
                child: Image.asset(
                  'assets/car.png',
                  fit: BoxFit.fitHeight,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
            ),
            // Add your image asset
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/music.png',
                      scale: 3,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
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
                    const SizedBox(height: 15.0),
                    const StrawfordText(
                        text: '24 Feb 2024', color: Colors.grey),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
