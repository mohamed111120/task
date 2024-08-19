class ArticleModel {
  String image;
  String title;

  ArticleModel({
    required this.image,
    required this.title,
  });
}

List<ArticleModel> articleList = [
  ArticleModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAJ8Zo4T1bmb1zz5_2Cm_bJlogOB70m69oXg&s',
    title: 'Improving Sleep',
  ),
  ArticleModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAJ8Zo4T1bmb1zz5_2Cm_bJlogOB70m69oXg&s',
    title: 'Reducing',
  ),
  ArticleModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAJ8Zo4T1bmb1zz5_2Cm_bJlogOB70m69oXg&s',
    title: 'Spicy Food',
  ),
  ArticleModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAJ8Zo4T1bmb1zz5_2Cm_bJlogOB70m69oXg&s',
    title: 'Reducing',
  ),
];
