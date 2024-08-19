import 'package:flutter/material.dart';

import '../../model/article_model.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.articleModel, });
 final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage(
                image: NetworkImage(
                    articleModel.image
                ),
                fit: BoxFit.cover,
              )),
          height: 100,
          width: 100,
        ),
        SizedBox(
          width: 100,
          child: Text(
            articleModel.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
