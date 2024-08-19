import 'package:flutter/material.dart';

import '../../model/article_model.dart';
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
        itemCount: articleList.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ArticleItem(
              articleModel: articleList[index],
            ),
          );
        },
      ),
    );
  }
}
