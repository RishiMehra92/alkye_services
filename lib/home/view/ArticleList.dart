import 'package:flutter/material.dart';

import '../../ArticleCard.dart';

class ArticleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ArticleCard();
      },
    );
  }
}
