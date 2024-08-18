import 'package:flutter/material.dart';

import 'article_item.dart';

class SymptomsArticlesListView extends StatelessWidget {
  const SymptomsArticlesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: const ArticleItem(),
          );
        },
      ),
    );
  }
}
